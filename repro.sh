export CLASSPATH=/wf/Shenandoah/build/linux-x86_64-server-release/test-support/jtreg_test_hotspot_jtreg_gc_shenandoah_TestAllocIntArrays_java_generational/gc/shenandoah/TestAllocIntArrays_generational.d:/wf/Shenandoah/test/hotspot/jtreg/gc/shenandoah:/wf/Shenandoah/build/linux-x86_64-server-release/test-support/jtreg_test_hotspot_jtreg_gc_shenandoah_TestAllocIntArrays_java_generational/classes/0/test/lib:/wf/Shenandoah/test/lib:/wf/tools/jtreg/lib/javatest.jar:/wf/tools/jtreg/lib/jtreg.jar:/wf/Shenandoah/build/linux-x86_64-server-release/test-support/jtreg_test_hotspot_jtreg_hotspot_gc_shenandoah/classes/1/gc/shenandoah/TestAllocIntArrays_generational.d/

for i in `seq 100` ; do
    echo "----------- STARTING --------------------"

    /wf/Shenandoah/build/linux-x86_64-server-release/jdk/bin/java \
        -Djdk.test.lib.random.seed=-5698883077588024244 \
        -XX:+UnlockDiagnosticVMOptions \
        -XX:+UnlockExperimentalVMOptions \
        -XX:-ShenandoahUncommit \
        -XX:-ShenandoahPacing \
        -XX:-ShenandoahDegeneratedGC \
        -Xmx1g \
        -XX:+UseShenandoahGC \
        -XX:ShenandoahGCMode=generational \
        -XX:+ShenandoahVerify \
        TestAllocIntArrays
            
    echo "-----------  DONE  --------------------"
done
