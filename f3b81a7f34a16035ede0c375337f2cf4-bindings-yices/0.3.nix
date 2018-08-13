{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      yices-dynamic = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "bindings-yices";
        version = "0.3";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "pepeiborra@gmail.com";
      author = "Jose Iborra";
      homepage = "";
      url = "";
      synopsis = "Bindings to the Yices theorem prover";
      description = "";
      buildType = "Simple";
    };
    components = {
      "bindings-yices" = {
        depends  = [ (hsPkgs.base) ];
        libs = [
          (pkgs."yices")
        ] ++ pkgs.lib.optional (_flags.yices-dynamic) (pkgs."gmp");
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs)
        ];
      };
    };
  }