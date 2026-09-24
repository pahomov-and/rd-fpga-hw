# 2026-09-24T19:23:30.293259
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis")

platform = client.get_component(name="platform")
status = platform.build()

status = platform.build()

status = platform.build()

status = platform.build()

status = platform.build()

status = platform.build()

comp = client.get_component(name="led_runner")
status = comp.clean()

status = platform.build()

comp.build()

status = comp.clean()

status = platform.build()

comp.build()

