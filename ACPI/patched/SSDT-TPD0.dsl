/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20181003 (64-bit version)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /Users/Xc233/Documents/GitHub/Hackintosh-Lenovo-chao5000/EFI/CLOVER/ACPI/patched/SSDT-TPD0.aml, Thu Mar 28 17:26:04 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000103 (259)
 *     Revision         0x02
 *     Checksum         0x15
 *     OEM ID           "TPD"
 *     OEM Table ID     "TPD"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20190215 (538509845)
 */
DefinitionBlock ("", "SSDT", 2, "TPD", "TPD", 0x00000000)
{
    External (_SB_.PCI0.I2C0.TPD0.SBFG, IntObj)
    External (TPTY, FieldUnitObj)

    Debug = "Enable touchpad work with VoodooI2C.kext"
    Method (_SB.PCI0.I2C0.TPD0._CRS, 0, Serialized)  // _CRS: Current Resource Settings
    {
        If ((TPTY == One))
        {
            Name (SBFB, ResourceTemplate ()
            {
                I2cSerialBusV2 (0x0015, ControllerInitiated, 0x00061A80,
                    AddressingMode7Bit, "\\_SB.PCI0.I2C0",
                    0x00, ResourceConsumer, , Exclusive,
                    )
            })
            Name (SBFG, ResourceTemplate ()
            {
                GpioInt (Level, ActiveLow, ExclusiveAndWake, PullDefault, 0x0000,
                    "\\_SB.PCI0.GPI0", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x003F
                    }
            })
            Return (ConcatenateResTemplate (SBFB, SBFG))
        }
    }
}

