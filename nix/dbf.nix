{
  "0.0.0.1" = {
    sha256 = "bde68875c84c692b937ad6f2de2f9e212b4edcf65db59f22dc9907dfc1ebcdcf";
    revisions = {
      r0 = {
        nix = import ../hackage/dbf-0.0.0.1-r0-c65464eb2637efec78a9c9cba39a51f4a9a9426a964d3a5583c1481c817ae134.nix;
        revNum = 0;
        sha256 = "c65464eb2637efec78a9c9cba39a51f4a9a9426a964d3a5583c1481c817ae134";
      };
      default = "r0";
    };
  };
  "0.0.0.2" = {
    sha256 = "c216e6fa2cb5794e3f81a1d47163ad6e7e9b827d73e8cf2ad471f7bad6215edd";
    revisions = {
      r0 = {
        nix = import ../hackage/dbf-0.0.0.2-r0-0aeb93e188e9b7ad1d3591a24ad4e55fc0e512e7fcd08eda59fbe03737e0f90b.nix;
        revNum = 0;
        sha256 = "0aeb93e188e9b7ad1d3591a24ad4e55fc0e512e7fcd08eda59fbe03737e0f90b";
      };
      default = "r0";
    };
  };
}