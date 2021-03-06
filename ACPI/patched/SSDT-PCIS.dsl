/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20181003 (64-bit version)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-PCIS.aml, Sun Apr 14 20:00:54 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000003CE (974)
 *     Revision         0x02
 *     Checksum         0xAC
 *     OEM ID           "PCIS"
 *     OEM Table ID     "PCIS"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20190215 (538509845)
 */
DefinitionBlock ("", "SSDT", 2, "PCIS", "PCIS", 0x00000000)
{
    External (_SB_.PCI0.GFX0, DeviceObj)
    External (_SB_.PCI0.I2C0, DeviceObj)
    External (_SB_.PCI0.RP05, DeviceObj)
    External (_SB_.PCI0.SATA, DeviceObj)
    External (_SB_.PCI0.XHC_, DeviceObj)

    Method (_SB.PCI0.SATA._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If ((Arg2 == Zero))
        {
            Return (Buffer (One)
            {
                 0x03                                             // .
            })
        }

        Return (Package (0x06)
        {
            "AAPL,slot-name", 
            Buffer (0x09)
            {
                "Built in"
            }, 

            "name", 
            Buffer (0x15)
            {
                "SATA AHCI Controller"
            }, 

            "model", 
            Buffer (0x32)
            {
                "Intel Sunrise Point-LP PCH - SATA AHCI Controller"
            }
        })
    }

    Method (_SB.PCI0.GFX0._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If ((Arg2 == Zero))
        {
            Return (Buffer (One)
            {
                 0x03                                             // .
            })
        }

        Return (Package (0x06)
        {
            "AAPL,slot-name", 
            Buffer (0x09)
            {
                "Built in"
            }, 

            "name", 
            Buffer (0x16)
            {
                "Intel HD Graphics 620"
            }, 

            "model", 
            Buffer (0x16)
            {
                "Intel HD Graphics 620"
            }
        })
    }

    Method (_SB.PCI0.I2C0._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If ((Arg2 == Zero))
        {
            Return (Buffer (One)
            {
                 0x03                                             // .
            })
        }

        Return (Package (0x08)
        {
            "AAPL,slot-name", 
            Buffer (0x09)
            {
                "Built in"
            }, 

            "device_type", 
            Buffer (0x04)
            {
                "I2C"
            }, 

            "name", 
            Buffer (0x2A)
            {
                "Sunrise Point-LP Serial IO I2C Controller"
            }, 

            "model", 
            Buffer (0x3D)
            {
                "Intel Corporation, Sunrise Point-LP Serial IO I2C Controller"
            }
        })
    }

    Method (_SB.PCI0.XHC._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If ((Arg2 == Zero))
        {
            Return (Buffer (One)
            {
                 0x03                                             // .
            })
        }

        Return (Package (0x06)
        {
            "AAPL,slot-name", 
            Buffer (0x09)
            {
                "Built in"
            }, 

            "name", 
            Buffer (0x3C)
            {
                "Intel Corporation, Sunrise Point-LP USB 3.0 xHCI Controller"
            }, 

            "model", 
            Buffer (0x1E)
            {
                "Intel USB 3.0 xHCI Controller"
            }
        })
    }

    Method (_SB.PCI0.RP05._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If ((Arg2 == Zero))
        {
            Return (Buffer (One)
            {
                 0x03                                             // .
            })
        }

        Return (Package (0x06)
        {
            "AAPL,slot-name", 
            Buffer (0x09)
            {
                "Built in"
            }, 

            "name", 
            Buffer (0x19)
            {
                "Realtek RTL8168GU/8111GU"
            }, 

            "model", 
            Buffer (0x36)
            {
                "Realtek RTL8168GU/8111GU PCI Express Gigabit Ethernet"
            }
        })
    }
}

