public class Main {

    private String yourName;
  
    public Main(String yourName) {
      // this is a key word as self in python
      this.yourName = yourName;
    }
  
    public void sayHelloFromMe() {
      System.out.println("Hello from " + yourName);
    }
    public void sayHello() {
      System.out.println("Hello from sayHello");
    }
  
    public void sayHelloFrom(String name) {
      System.out.println("Hello from " + name);
    }
  
    public static void main(String[] args) {
      System.out.println("Hello World");
      Main hello = new Main("Sue");
      hello.sayHello();
      hello.sayHelloFrom("Bob");
      hello.sayHelloFromMe();
  
    }
  }
  