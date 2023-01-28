*** Variables ***
${string}       piesek
@{list}     pierwszy    drugi   trzeci  czwarty  piąty
&{dictionary}   slowo=${string}     numer=30        lista=@{list}
@{imiona}   Kamil   Marta   Augusto     Marek
@{nazwiska}     Kowalski    Malinowski    Nowak  Nijaki

*** Test Cases ***
For Loop In Dictionary
    Log  ${dictionary}
    FOR  ${values}  IN  &{dictionary}
        Log     ${values}
    END

#For Loop In Range With Index
#    FOR     ${i}    IN RANGE    4
#        Log      ${imiona}[${i}] ${nazwiska}[${i}]
#    END
#
#
#
#For Loop In List
#    FOR     ${item}    IN  @{list}
#        Log     ${item}
#    END

#For Loop In Range1
#    FOR     ${i}    IN RANGE    10
#        Log     ${i}
#    END
#
#For Loop In Range2
#    FOR     ${i}    IN RANGE    4   10
#        Log     ${i}
#    END
#
#For Loop In Range3
#    FOR     ${i}    IN RANGE    4   30  3
#        Log     ${i}
#    END