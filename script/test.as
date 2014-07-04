import alx.common.test.*;
//import test.alx.common.util.CObjectUtilsTest;
import test.alx.common.util.CArrayListTest;
import test.alx.common.util.CHashMapTest;
import test.alx.common.util.CHashSetTest;

// refactoring
//CUnitTests.init( CTester, CUnitTests.SIMPLE_MODE, true);
// development
//CUnitTests.init( CTester, CUnitTests.EXTENDED_MODE, true);
//CUnitTests.init( CTester, CUnitTests.FULL_MODE, true);
CUnitTests.init( CTester, CUnitTests.FULL_MODE, false);

CUnitTests.run( //CObjectUtilsTest
              CArrayListTest
              , CHashMapTest
              , CHashSetTest
              );
CUnitTests.printResult( root);