from robot.libraries.BuiltIn import BuiltIn
from robot.api.deco import keyword
##robot.api.deco para poder nomear o método que representará uma keyword
from appium.webdriver.common.touch_action import TouchAction


##Criar keyword que não existe na lib
##Armazenar em AppiumLib a instancia da lib que está em execução

@keyword(name='Drag And Drop')
def drag_drop(element_id, p_origin, p_target):
    appiumLib = BuiltIn().get_library_instance('AppiumLibrary')
    driver = appiumLib._current_application()

    elem_origin = driver.find_elements_by_id(element_id)[int(p_origin)]
    elem_target = driver.find_elements_by_id(element_id)[int(p_target)]
    ##Deve haver conversão de str para int

    actions = TouchAction(driver)
    actions.long_press(elem_origin).move_to(elem_target)
    actions.release()
    actions.perform()
