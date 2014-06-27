package alx.common.util
{
  /**
   * Iterator interface {@see http://grepcode.com/file/repository.grepcode.com/java/root/jdk/openjdk/6-b14/java/util/Iterator.java#Iterator}.
   * @author Alexander Volkov
   * @version 1.0
   */
  public interface IIterator
  {
    /**
     * Checks if there is a next element.
     * @return Boolean
     */
    public function hasNext():Boolean;
    /**
     * Gets next element.
     * @return Object
     */
    public function next():Object;
    /** Deletes current element.*/
    public function remove():void;
  }
}