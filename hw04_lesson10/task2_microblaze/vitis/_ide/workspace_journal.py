# 2026-09-27T22:56:54.412612
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis")

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "platform",hw_design = "$COMPONENT_LOCATION/../../vivado/design_1_wrapper.xsa",os = "standalone",cpu = "microblaze_0",domain_name = "standalone_microblaze_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

platform = client.get_component(name="platform")
status = platform.build()

comp = client.create_app_component(name="led_runner",platform = "$COMPONENT_LOCATION/../platform/export/platform/platform.xpfm",domain = "standalone_microblaze_0")

comp = client.get_component(name="led_runner")
status = comp.import_files(from_loc="", files=["/home/tymbys/home/FPGA/course/courses/robot-dreams/hw/hw04_lesson10/task1_zynq/vitis/led_runner/src/main.c"])

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = comp.clean()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = comp.clean()

status = platform.build()

comp.build()

