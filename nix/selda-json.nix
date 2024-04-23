{
  "0.1.0.0" = {
    sha256 = "a02df13080ec36d769e5d4200440bb4f78df2faba53bdb2f0f90de75a4659854";
    revisions = {
      r0 = {
        nix = import ../hackage/selda-json-0.1.0.0-r0-25ff42ede1295679edbe731ecde55fe1da7a5672647da3056f0add9df43a651e.nix;
        revNum = 0;
        sha256 = "25ff42ede1295679edbe731ecde55fe1da7a5672647da3056f0add9df43a651e";
      };
      r1 = {
        nix = import ../hackage/selda-json-0.1.0.0-r1-52591d9637523483a59e21f23c640601c19f03e8af4f01aac600f1151bd3f8e9.nix;
        revNum = 1;
        sha256 = "52591d9637523483a59e21f23c640601c19f03e8af4f01aac600f1151bd3f8e9";
      };
      default = "r1";
    };
  };
  "0.1.1.0" = {
    sha256 = "88061090d899eb831c72d39de21d6311ab1219e89188f641c777daf22b2622aa";
    revisions = {
      r0 = {
        nix = import ../hackage/selda-json-0.1.1.0-r0-01cd15cc70ed5b337004862d9e79472fdd487e3b6efd20aac9b401c44b254009.nix;
        revNum = 0;
        sha256 = "01cd15cc70ed5b337004862d9e79472fdd487e3b6efd20aac9b401c44b254009";
      };
      r1 = {
        nix = import ../hackage/selda-json-0.1.1.0-r1-c08b2668595e85d7776bd77195ed802f0a89acdc0141f9fb1a1149f8d1fe52bd.nix;
        revNum = 1;
        sha256 = "c08b2668595e85d7776bd77195ed802f0a89acdc0141f9fb1a1149f8d1fe52bd";
      };
      default = "r1";
    };
  };
  "0.1.1.1" = {
    sha256 = "30a70156b087dc8b0588a0d6fcc42a8e9ecb5d532e261cb017ca3c34ca405e6a";
    revisions = {
      r0 = {
        nix = import ../hackage/selda-json-0.1.1.1-r0-3abe81b0d30f89621c53ad7f711fdbc1010ecdb2c47652533966c82a7724ebc1.nix;
        revNum = 0;
        sha256 = "3abe81b0d30f89621c53ad7f711fdbc1010ecdb2c47652533966c82a7724ebc1";
      };
      default = "r0";
    };
  };
}