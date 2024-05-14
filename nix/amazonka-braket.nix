{
  "2.0" = {
    sha256 = "2d651c2fd18ae8a5f26cb17856a97e83b466d3b301c3a002aeac68f99025b725";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-braket-2.0-r0-d7da3438827ab8c999e4e4e87645b411acfaf644faf6a3d8953372386c674e5b.nix;
        revNum = 0;
        sha256 = "d7da3438827ab8c999e4e4e87645b411acfaf644faf6a3d8953372386c674e5b";
      };
      r1 = {
        nix = import ../hackage/amazonka-braket-2.0-r1-53e6a93ee264a02232e96707072f8f19c59f6239a304a17f3623ef5efe2e6112.nix;
        revNum = 1;
        sha256 = "53e6a93ee264a02232e96707072f8f19c59f6239a304a17f3623ef5efe2e6112";
      };
      default = "r1";
    };
  };
}