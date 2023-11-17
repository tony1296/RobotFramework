import json
import jsonpath


def read_locator_from_json(locationname):
    f = open("C:\\Users\\HP\\PycharmProjects\\RobotFramework\\JSONfilehandling\\locators.json")
    response = json.loads(f.read())
    value = jsonpath.jsonpath(response,locationname)
    return value[0]
