package test.alx.common.util
{
  import alx.common.test.CUnitTest;
  import alx.common.util.CObjectUtils;

  public class CObjectUtilsTest extends CUnitTest
  {
    public function CObjectUtilsTest( strLabel:String):void
    {
      super( strLabel);
    }

    protected override function testList():Array
    {
      return new Array( this.testEqual
                      );
    }

    public function testEqual():void
    {
      this.getTester().isTrue( 'CObjectUtils.equal( 1, 1)'
                              , CObjectUtils.equal( 1, 1)
                              );
      this.getTester().isFalse( 'CObjectUtils.equal( 1, 2)'
                              , CObjectUtils.equal( 1, 2)
                              );
      this.getTester().isTrue( 'CObjectUtils.equal( "abc", "abc")'
                              , CObjectUtils.equal( "abc", "abc")
                              );      
      this.getTester().isFalse( 'CObjectUtils.equal( "abc", "acb")'
                              , CObjectUtils.equal( "abc", "acb")
                              );
      this.getTester().isTrue( 'CObjectUtils.equal( false, false)'
                              , CObjectUtils.equal( false, false)
                              );      
      this.getTester().isFalse( 'CObjectUtils.equal( true, false)'
                              , CObjectUtils.equal( true, false)
                              );
      var objectA1:CObjectA = new CObjectA( 1);
      var objectA2:CObjectA = new CObjectA( 1);
      var objectA3:CObjectA = new CObjectA( 2);
      this.getTester().isTrue( 'CObjectUtils.equal( objectA1, objectA1)'
                              , CObjectUtils.equal( objectA1, objectA1)
                              );
      this.getTester().isTrue( 'CObjectUtils.equal( objectA1, objectA2)'
                              , CObjectUtils.equal( objectA1, objectA2)
                              );      
      this.getTester().isFalse( 'CObjectUtils.equal( objectA1, objectA3)'
                              , CObjectUtils.equal( objectA1, objectA3)
                              );
      var objectB1:CObjectB = new CObjectB( 1);
      var objectB2:CObjectB = new CObjectB( 1);
      var objectB3:CObjectB = new CObjectB( 2);
      this.getTester().isTrue( 'CObjectUtils.equal( objectB3, objectB3)'
                              , CObjectUtils.equal( objectB3, objectB3)
                              );
      this.getTester().isTrue( 'CObjectUtils.equal( objectB1, objectB2)'
                              , CObjectUtils.equal( objectB1, objectB2)
                              );
      this.getTester().isFalse( 'CObjectUtils.equal( objectB1, objectB3)'
                              , CObjectUtils.equal( objectB1, objectB3)
                              );
      var objectAA1:CObjectAA = new CObjectAA( 1, 'abc');
      var objectAA2:CObjectAA = new CObjectAA( 1, 'bbb');
      var objectAA3:CObjectAA = new CObjectAA( 2, 'abc');
      this.getTester().isTrue( 'CObjectUtils.equal( objectAA2, objectAA2)'
                              , CObjectUtils.equal( objectAA2, objectAA2)
                              );      
      this.getTester().isFalse( 'CObjectUtils.equal( objectAA1, objectAA2)'
                              , CObjectUtils.equal( objectAA1, objectAA2)
                              );
      this.getTester().isFalse( 'CObjectUtils.equal( objectAA1, objectAA3)'
                              , CObjectUtils.equal( objectAA1, objectAA3)
                              );

      this.getTester().isFalse( 'CObjectUtils.equal( objectAA1, objectB1)'
                              , CObjectUtils.equal( objectAA1, objectB1)
                              );
      this.getTester().isFalse( 'CObjectUtils.equal( objectAA1, objectA1)'
                              , CObjectUtils.equal( objectAA1, objectA1)
                              );
      this.getTester().isFalse( 'CObjectUtils.equal( objectA1, objectB1)'
                              , CObjectUtils.equal( objectA1, objectB1)
                              );
    }
  }
}
class CObjectA
{
  private var m_nId:int;

  public function CObjectA( nId:int):void
  {
    this.m_nId = nId;
  }
}
class CObjectAA extends CObjectA
{
  private var m_nId:int;
  private var m_strName:String;

  public function CObjectAA( nId:int, strName:String):void
  {
    super( nId);
    this.m_strName = strName;
  }
}
class CObjectB
{
  private var m_nId:int;

  public function CObjectB( nId:int):void
  {
    this.m_nId = nId;
  }
}