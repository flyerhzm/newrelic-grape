# 2.2.0

* Work with grape 0.16.0 [@mkou](https://github.com/mkou)

# 2.1.0 (12/08/2014)

* Work with grape 0.14.0 [@dblock](https://github.com/dblock)

## 2.0.0 (10/20/2014)

* Work with newrelic_rpm 3.9

## 1.4.1 (07/04/2014)

* Fix "uninitialized constant NewRelic::MetricSpec (NameError)" with newrelic_rpm 3.8.1.221
* Fix "uninitialized constant Grape"

## 1.4.0 (05/09/2014)

* Add version to request path [@donbobka](https://github.com/donbobka)

## 1.3.1 (06/08/2013)

* Remove explicit newrelic_rpm require [@rymai](https://github.com/rymai)
* Add information to README [@agileanimal](https://github.com/agileanimal)

## 1.3.0 (05/10/2013)

* Support NewRelic request params [@vindia](https://github.com/vindia)

## 1.2.1 (04/02/2013)

* Fixed an NameError problem - [@milkcocoa](https://github.com/milkcocoa)

## 1.2.0 (02/27/2013)

* Use newrelic-grape middleware before `Grape::Middleware::Error`
* Better Readme

## 1.1.0 (12/28/2012)

* Changed namespace from `Newrelic` to `NewRelic` to be consistent with the RPM gem - [@dblock](https://github.com/dblock).
* Set `DISABLE_NEW_RELIC_GRAPE` to disable instrumentation - [@dblock](https://github.com/dblock).

## 1.0.0 (12/18/2012)

* Initial public release - [@flyerhzm](https://github.com/flyerhzm).
