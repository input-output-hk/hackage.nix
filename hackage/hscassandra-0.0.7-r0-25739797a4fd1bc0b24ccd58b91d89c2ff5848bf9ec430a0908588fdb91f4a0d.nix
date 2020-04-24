{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "hscassandra"; version = "0.0.7"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "kirk@glyphsoftware.com,\nnecrobious@gmail.com";
      author = "Kirk Peterson";
      homepage = "https://github.com/necrobious/hscassandra";
      url = "";
      synopsis = "cassandra database interface";
      description = "A simple abstration over the Cassandra Thrift bindings designed to make working with Cassandra's thrift API easier, without removing the ability to use it directly.\nA Cassandra monad is presented for mannaging the connection to the Cassandra server, and the calculation of cassandra timestams (in microseconds).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."Thrift" or ((hsPkgs.pkgs-errors).buildDepError "Thrift"))
          (hsPkgs."cassandra-thrift" or ((hsPkgs.pkgs-errors).buildDepError "cassandra-thrift"))
          ];
        buildable = true;
        };
      };
    }