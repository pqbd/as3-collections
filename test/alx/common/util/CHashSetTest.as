package test.alx.common.util
{
  import alx.common.util.ISet;
  import alx.common.util.CHashSet;

  public class CHashSetTest extends CAbstractSetTest
  {
    public function CHashSetTest( strLabel:String):void
    {
      super( strLabel);
    }

    public override function createSet():ISet
    {
      return new CHashSet();
    }
  }
}