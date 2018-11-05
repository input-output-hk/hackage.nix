{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "docusign-example";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Capital Match";
      maintainer = "dev@capital-match.com";
      author = "Jonathan Knowles";
      homepage = "https://github.com/capital-match/docusign-example#readme";
      url = "";
      synopsis = "DocuSign examples";
      description = "This package provides a basic demonstration of how to use the Haskell docusign-client package";
      buildType = "Simple";
    };
    components = {
      exes = {
        "docusign-example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.docusign-base)
            (hsPkgs.docusign-client)
            (hsPkgs.exceptions)
            (hsPkgs.filepath)
            (hsPkgs.optparse-generic)
            (hsPkgs.text)
            (hsPkgs.uuid)
          ];
        };
      };
    };
  }