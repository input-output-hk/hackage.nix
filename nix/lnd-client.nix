{
  "0.1.0.0" = {
    sha256 = "f8fd6b81bbf5165df752a897216f4716d27950d9b5949a1ad3a0c8aa5eaa523a";
    revisions = {
      r0 = {
        nix = import ../hackage/lnd-client-0.1.0.0-r0-77eaeaa3e4905bc96de8c0ee2ed55b25bfbcc51158c6d9576e545285f36c3fb0.nix;
        revNum = 0;
        sha256 = "77eaeaa3e4905bc96de8c0ee2ed55b25bfbcc51158c6d9576e545285f36c3fb0";
      };
      default = "r0";
    };
  };
  "0.1.0.1" = {
    sha256 = "2a9bb53474d6490f5571d7aae7bf4a989361fcab26b483bdee2c9de83359d3ad";
    revisions = {
      r0 = {
        nix = import ../hackage/lnd-client-0.1.0.1-r0-75ffde7dd53fca6b07e133cec5ac040d746d9db2fea71c8e085c337246f327fb.nix;
        revNum = 0;
        sha256 = "75ffde7dd53fca6b07e133cec5ac040d746d9db2fea71c8e085c337246f327fb";
      };
      default = "r0";
    };
  };
}