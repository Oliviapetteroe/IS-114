use context essentials2021
include gdrive-sheets
include data-source
include shared-gdrive(
"dcic-2021",
"1wyQZj_L0qqV9Ekgr9au6RX2iqt2Ga8Ep")


ssid = "1RYN0i4Zx_UETVuYacgaGfnFcv4l9zd9toQTTdkQkj7g"
kWh-wealthy-consumer-data =
  load-table: komponent, energi
    source: load-spreadsheet(ssid).sheet-by-name("kWh", true)
    sanitize energi using string-sanitizer
end

fun energi-to-number(str :: String) -> Number:
  cases(Option) string-to-number(str):
    | some(a) => a
    | none => 0
  end
where:
  energi-to-number("") is 0
  energi-to-number("48") is 48
end

fun car-energy-per-day(distance-travelled-per-day, distance-per-unit-of-fuel):
  doc:"kopiert fra github oppgave for å løse 2d" 
  energy-per-unit-of-fuel = 10
    ( distance-travelled-per-day / 
                            distance-per-unit-of-fuel ) * 
                                        energy-per-unit-of-fuel
where:
  car-energy-per-day(10, 10) is 10
end

print(kWh-wealthy-consumer-data)

transformed-table = transform-column(kWh-wealthy-consumer-data, "energi", energi-to-number)

print(transformed-table)

distance-per-day = 16
distance-per-liter = 18
total-energy-per-day = sum(transformed-table, "energi") + car-energy-per-day(distance-per-day, distance-per-liter)

print(total-energy-per-day)

bar-chart(transformed-table, "komponent", "energi")

fun energi-to-number-with-car(str :: String) -> Number:
  cases(Option) string-to-number(str):
    | some(a) => a
    | none => car-energy-per-day(10, 10)
  end
where:
  energi-to-number-with-car("") is 10
  energi-to-number-with-car("48") is 48
end

transformed-table-with-car = transform-column(kWh-wealthy-consumer-data, "energi", energi-to-number-with-car)

print(transformed-table-with-car)

bar-chart(transformed-table-with-car, "komponent", "energi")