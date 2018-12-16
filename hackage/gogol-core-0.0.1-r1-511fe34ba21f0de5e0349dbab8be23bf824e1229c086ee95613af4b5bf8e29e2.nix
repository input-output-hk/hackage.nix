{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { old-locale = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "gogol-core";
        version = "0.0.1";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2015 Brendan Hay";
      maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
      author = "Brendan Hay";
      homepage = "https://github.com/brendanhay/gogol";
      url = "";
      synopsis = "Core data types and functionality for Gogol libraries.";
      description = "Core data types, functionality and serialisation primitives for\nGogol related Google Services SDKs.\n\nThe external interface of this library is stable with respect to the\ndownstream Gogol libraries, only, and as such is not suitable\nfor use in non-Gogol projects.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.conduit)
          (hsPkgs.dlist)
          (hsPkgs.exceptions)
          (hsPkgs.hashable)
          (hsPkgs.http-client)
          (hsPkgs.http-media)
          (hsPkgs.http-types)
          (hsPkgs.lens)
          (hsPkgs.resourcet)
          (hsPkgs.scientific)
          (hsPkgs.servant)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
        ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "7.9")) (hsPkgs.nats)) ++ (if flags.old-locale
          then [
            (hsPkgs.old-locale)
            (hsPkgs.time)
          ]
          else [ (hsPkgs.time) ]);
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.gogol-core)
            (hsPkgs.base)
            (hsPkgs.tasty)
          ];
        };
      };
    };
  }