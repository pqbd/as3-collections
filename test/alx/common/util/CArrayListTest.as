package test.alx.common.util
{
  import alx.common.test.CUnitTest;
  import alx.common.util.IList;
  import alx.common.util.CArrayList;

  public class CArrayListTest extends CAbstractListTest
  {
    public function CArrayListTest( strLabel:String):void
    {
      super( strLabel);
    }

    public override function createList():IList
    {
      return new CArrayList();
    }
  }
}