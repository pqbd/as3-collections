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

    public override function testRemoveAt():void
    {
      const list:IList = this.createList();
      list.add( 1);
      list.add( 9);
      list.add( 3);
      list.removeAt( 1);
      this.getTester().isEqual( 'list.size()'
                              , list.size()
                              , 2
                              );
      this.getTester().isEqual( 'list.get( 0)'
                              , list.get( 0)
                              , 1
                              );
      this.getTester().isEqual( 'list.get( 1)'
                              , list.get( 1)
                              , 3
                              );
    }
    public override function testSet():void
    {
      const list:IList = this.createList();
      list.add( 1);
      list.add( 9);
      list.add( 3);
      list.set( 1, 55);
      this.getTester().isEqual( 'list.size()'
                              , list.size()
                              , 3
                              );
      this.getTester().isEqual( 'list.get( 0)'
                              , list.get( 0)
                              , 1
                              );
      this.getTester().isEqual( 'list.get( 1)'
                              , list.get( 1)
                              , 55
                              );
      this.getTester().isEqual( 'list.get( 2)'
                              , list.get( 2)
                              , 3
                              );
    }
  }
}