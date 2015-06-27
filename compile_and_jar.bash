
javac -cp libs/\*:libs/guava/guava-14.0.1.jar src/org/Firefuzzer/Fire/BufferOverflow.java src/org/Firefuzzer/Fire/SQLInjection.java src/org/Firefuzzer/Fire/Firefuzzer.java

cp libs/* build

cp libs/guava/guava-14.0.1.jar build

cp -r src/org build

rm build/org/Firefuzzer/Fire/*.java

cp src/inject.conf src/log4j.properties build

cd build

jar -cvfm Firefuzzer.jar ../MANIFEST.MF ./

cd ..

rm src/org/Firefuzzer/Fire/*.class

