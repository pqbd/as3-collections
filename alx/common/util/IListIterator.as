package alx.common.util
{
  /**
   * List Iterator interface {@see http://grepcode.com/file/repository.grepcode.com/java/root/jdk/openjdk/6-b14/java/util/ListIterator.java#ListIterator}.
   * @author Alexander Volkov
   * @version 1.0
   */
  public interface IListIterator
  extends IIterator
  {
    //+public function hasNext():Boolean;
    //+public function next():Object;
    //+public function remove():void;

    /**
     * Checks if there is a preious element.
     * @return Boolean
     */
    public function hasPrevious():Boolean;
    /**
     * Gets previous element.
     * @return Object
     */
    public function previous():Object;
    /** Gets next index.
     * @return int
     */
    public function nextIndex():int;
    /** Gets previous index.
     * @return int
     */
    public function previousIndex():int;
    /** Replaces the last element returned by next() or previous().*/
    public function set( element:Object):void;
    /** Inserts the specified element into the list before the next element that would be returned by next().*/
    public function add( element:Object):void;
  }
}