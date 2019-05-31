{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { static = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "rattletrap"; version = "8.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Taylor Fausak";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Parse and generate Rocket League replays.";
      description = "Rattletrap parses and generates Rocket League replays.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.aeson-pretty)
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.binary-bits)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.filepath)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.scientific)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.transformers)
          ];
        };
      exes = {
        "rattletrap" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.binary-bits)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.filepath)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.scientific)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.rattletrap)
            ];
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.binary-bits)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.filepath)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.scientific)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.HUnit)
            (hsPkgs.rattletrap)
            (hsPkgs.temporary)
            ];
          };
        };
      };
    }