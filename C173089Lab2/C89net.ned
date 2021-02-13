simple C89Node
{
    gates:
        input in;
        output out;
}

//
// Two instances (tic and toc) of Txc1 connected both ways.
// Tic and toc will pass messages to one another.
//
network C89Lab2Net
{
    @display("bgb=800,95");
    submodules:
        C89Node1: C89Node {
            @display("p=30,44;i=device/pc");
        }
        C89Node2: C89Node {
       // C89node1: C89node1;
        //C89Node2: C01Node;
            @display("p=646,36;i=device/pc");
        }
    connections:
        C89Node1.out --> {  delay = 100ms; } --> C89Node2.in;
        C89Node1.in <-- {  delay = 100ms; } <-- C89Node2.out;
}
