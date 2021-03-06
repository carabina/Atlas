/*
* Copyright (c) 2016 RentPath, LLC
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
* AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
* LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
* OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*/

public enum MappingError: ErrorType {
    
    /**
     
     There is no key available. Please make sure you first call `-key:` and pass the key that corresponds to the value in JSON you want to map.
     
     */
    case NoKeyError
    
    /**
     
     'key' does not exist in `_json`.
     
     - Parameters String: name of key
     
     */
    case KeyNotInJSONError(String)
    
    /**
     
     There was an error during the mapping process
     
     */
    case GenericMappingError
    
    /**
     
     Thrown when `_json` is not of type [String: AnyObject] or [AnyObject], which are the only two types a true JSON object could be
     
     */
    case NotAJSONObjectError
    
    /**
     
     Thrown when not able to map a JSON value to specified type
     
     */
    case NotMappable(String)
    
}
