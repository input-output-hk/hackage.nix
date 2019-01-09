{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "oasis-xrd"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Alexander Bondarenko";
      maintainer = "aenor.realm@gmail.com";
      author = "Alexander Bondarenko";
      homepage = "https://gitlab.com/dpwiz/oasis-xrd";
      url = "";
      synopsis = "Extensible Resource Descriptor";
      description = "Types and encodings for \"XRD, a simple generic format for describing resources\". Includes JRD encoding from RFC 6415.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.uri-bytestring)
          (hsPkgs.xml-conduit)
          (hsPkgs.xml-conduit-writer)
          ];
        };
      tests = {
        "example-json" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.oasis-xrd)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.uri-bytestring)
            (hsPkgs.xml-conduit)
            (hsPkgs.xml-conduit-writer)
            ];
          };
        "example-xml" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.oasis-xrd)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.uri-bytestring)
            (hsPkgs.xml-conduit)
            (hsPkgs.xml-conduit-writer)
            ];
          };
        };
      };
    }