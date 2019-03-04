{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "servant-waargonaut"; version = "0.5.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2017 Commonwealth Scientific and Industrial Research Organisation (CSIRO)";
      maintainer = "oᴉ˙ldɟb@uɐǝs";
      author = "QFPL @ Data61";
      homepage = "";
      url = "";
      synopsis = "Servant Integration for Waargonaut JSON Package";
      description = "Provides the types and instances necessary to utilise Waargonaut as the JSON handling library for your Servant API.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.servant)
          (hsPkgs.waargonaut)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.http-media)
          (hsPkgs.lens)
          (hsPkgs.wl-pprint-annotated)
          ];
        };
      tests = {
        "saarg" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.servant-waargonaut)
            (hsPkgs.servant-server)
            (hsPkgs.servant)
            (hsPkgs.waargonaut)
            (hsPkgs.attoparsec)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.http-media)
            (hsPkgs.lens)
            (hsPkgs.wl-pprint-annotated)
            (hsPkgs.wai)
            (hsPkgs.tasty)
            (hsPkgs.tasty-wai)
            (hsPkgs.http-types)
            (hsPkgs.transformers)
            ];
          };
        };
      };
    }