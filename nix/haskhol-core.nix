{
  "1.0.0" = {
    sha256 = "6c9f02f891cbd0cbb1ae1e4f168e655344478a613b2c9926eb780547e5d06c2a";
    revisions = {
      r0 = {
        nix = import ../hackage/haskhol-core-1.0.0-r0-7773c32952effc91f6f1459f21a682b8ba42841066ea3d959395c498195cfed4.nix;
        revNum = 0;
        sha256 = "7773c32952effc91f6f1459f21a682b8ba42841066ea3d959395c498195cfed4";
      };
      default = "r0";
    };
  };
  "1.1.0" = {
    sha256 = "bddb4053c5a671935fd6c95378ae5e584c95c503d40723eddbef617ad7f29f6e";
    revisions = {
      r0 = {
        nix = import ../hackage/haskhol-core-1.1.0-r0-fc83810eceea484284eb10f9e86d1a5f8f96693681d133960d7a1453d74118bb.nix;
        revNum = 0;
        sha256 = "fc83810eceea484284eb10f9e86d1a5f8f96693681d133960d7a1453d74118bb";
      };
      default = "r0";
    };
  };
}