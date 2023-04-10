OLED_ENABLE = yes
OLED_DRIVER = SSD1306
ENCODER_ENABLE = yes
CONSOLE_ENABLE = no
EXTRAKEY_ENABLE = yes
VIA_ENABLE = yes
LTO_ENABLE = yes
RGBLIGHT_ENABLE = no
CONVERT_TO=promicro_rp2040
OLED_DRIVER_ENABLE = yes
OCEAN_DREAM_ENABLE = yes
WPM_ENABLE = yes
MOUSEKEY_ENABLE = yes
SRC += luna.c
ifeq ($(strip $(OLED_DRIVER_ENABLE)), yes)
    #... your code here...

    ifdef OCEAN_DREAM_ENABLE
        ifeq ($(strip $(OCEAN_DREAM_ENABLE)), yes)
            SRC += ocean_dream.c
            OPT_DEFS += -DOCEAN_DREAM_ENABLE
        endif
    endif
    ifndef OCEAN_DREAM_ENABLE
        SRC += ocean_dream.c
        OPT_DEFS += -DOCEAN_DREAM_ENABLE
    endif
endif
  