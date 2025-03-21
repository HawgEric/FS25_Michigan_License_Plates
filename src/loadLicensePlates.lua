miPlate = {}

modDirectory = g_currentModDirectory

function miPlate.loadMapData(self, superFunc, xmlFile, missionInfo, baseDirectory)
    local path = modDirectory.."xml/licensePlates.xml"
    local plateXML = loadXMLFile("FS25_Michigan_License_Plates", path)

    local returnValue = superFunc(self, plateXML, missionInfo, modDirectory)

    return returnValue
end
LicensePlateManager.loadMapData = Utils.overwrittenFunction(LicensePlateManager.loadMapData, miPlate.loadMapData)