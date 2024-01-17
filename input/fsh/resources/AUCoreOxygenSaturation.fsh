Profile: AUCoreOxygenSaturation
Parent: $oxygensat
Id: au-core-oxygensat
Title: "AU Core Oxygen Saturation"
Description: "This profile sets minimum expectations for an Observation resource to record, search, and fetch oxygen saturation observations with standard coding and units of measure. It is based on the [FHIR Oxygen Saturation Profile](http://hl7.org/fhir/R4/oxygensat.html) and identifies the *additional* mandatory core elements, extensions, vocabularies and value sets that **SHALL** be present in the Observation resource when conforming to this profile. It provides the floor for standards development for specific uses cases in an Australian context."
* ^status = #draft
* ^copyright = "Used by permission of HL7 International, all rights reserved Creative Commons License. HL7 Australia© 2022+; Licensed Under Creative Commons No Rights Reserved.\n\nThis resource includes SNOMED Clinical Terms™ (SNOMED CT®) which is used by permission of the International Health Terminology Standards Development Organisation (IHTSDO). All rights reserved. SNOMED CT®, was originally created by The College of American Pathologists. “SNOMED” and “SNOMED CT” are registered trademarks of the IHTSDO. The rights to use and implement or implementation of SNOMED CT content are limited to the extent it is necessary to allow for the end use of this material.  No further rights are granted in respect of the International Release and no further use of any SNOMED CT content by any other party is permitted. \n\nThis material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2021, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc.\n\nAll copies of this resource must include this copyright statement and all information contained in this statement."
* obeys au-core-obs-02
* . ^short = "Oxygen saturation"
* . ^definition = "Measurement of a patient's oxygen saturation at a point in time."
* . ^comment = "Oxygen saturation observation using a LOINC code and a SNOMED CT code."
* status = #final (exactly)
* code.coding contains snomedOxygenSatCode 1..1
* code.coding[snomedOxygenSatCode] ^short = "SNOMED CT Oxygen Saturation"
* code.coding[snomedOxygenSatCode].system 1..
* code.coding[snomedOxygenSatCode].system = "http://snomed.info/sct" (exactly)
* code.coding[snomedOxygenSatCode].code 1..
* code.coding[snomedOxygenSatCode].code = #103228002 (exactly)
* subject only Reference(AUCorePatient)
* encounter only Reference(AUCoreEncounter)
* encounter MS
* effective[x] only dateTime
* effective[x] obeys au-core-obs-01
* effective[x] ^short = "Date, and optionally time, the observation was performed"
* effective[x] ^definition = "Date, and optionally time, the observation was performed."
* effective[x] ^condition = "au-core-obs-01"
//* performer Reference(AUCorePractitioner or AUCorePractitionerRole or AUCoreOrganization or AUCorePatient or RelatedPerson)
* performer MS
* valueQuantity ^short = "Oxygen saturation"
* valueQuantity ^condition = "au-core-obs-02"
* dataAbsentReason MS
* dataAbsentReason ^condition = "au-core-obs-02"
* bodySite from $body-site-1 (preferred)
* bodySite obeys au-core-obs-04
* bodySite ^condition = "au-core-obs-04"