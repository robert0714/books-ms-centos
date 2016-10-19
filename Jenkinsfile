node("cd") {
    def serviceName = "books-ms-centos"
    def prodIp = "192.168.57.31"
    def proxyIp = "192.168.57.31"
    def registryIpPort = "192.168.57.29:5000"
    
    def flow = load "/data/scripts/workflow-util.groovy"

    git url: "https://github.com/robert0714/${serviceName}.git"
    flow.provision("prod2.yml")
    flow.buildTests(serviceName, registryIpPort)
    flow.runTests(serviceName, "tests", "")
    flow.buildService(serviceName, registryIpPort)

    def currentColor = flow.getCurrentColor(serviceName, prodIp)
    def nextColor = flow.getNextColor(currentColor)

    flow.deployBG(serviceName, prodIp, nextColor)
    flow.runBGPreIntegrationTests(serviceName, prodIp, nextColor)
    flow.updateBGProxy(serviceName, proxyNode, nextColor)
    flow.runBGPostIntegrationTests(serviceName, prodIp, proxyIp, proxyNode, currentColor, nextColor)
}
