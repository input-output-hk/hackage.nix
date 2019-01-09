{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "docusign-base-minimal"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dev@capital-match.com";
      author = "Jonathan Knowles <mail@jonathanknowles.net>";
      homepage = "";
      url = "";
      synopsis = "Low-level bindings to the DocuSign API (only what is necessary for docusign-client)";
      description = "DocuSign is an electronic signature technology and digital transaction\nmanagement. These are just low-level bindings to the API.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.data-default)
          (hsPkgs.http-media)
          (hsPkgs.lens)
          (hsPkgs.servant)
          (hsPkgs.servant-client)
          (hsPkgs.text)
          ];
        };
      };
    }