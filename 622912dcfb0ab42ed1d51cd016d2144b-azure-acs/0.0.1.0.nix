{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "azure-acs";
          version = "0.0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Hemanth Kapila (c) 2014";
        maintainer = "saihemanth@gmail.com";
        author = "Hemanth Kapila";
        homepage = "https://github.com/kapilash/hs-azure";
        url = "";
        synopsis = "Windows Azure ACS";
        description = "Haskell wrappers  over REST API for <http://msdn.microsoft.com/en-us/library/hh147631.aspx Windows Azure Active Directory Access Control>.\nCurrently only API that is supported is the one to request a password token from ACS via the <http://msdn.microsoft.com/en-us/library/hh674475.aspx OAuth WRAP  protocol>";
        buildType = "Simple";
      };
      components = {
        "azure-acs" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.conduit
            hsPkgs.conduit-extra
            hsPkgs.http-conduit
            hsPkgs.attoparsec
            hsPkgs.http-types
            hsPkgs.time
            hsPkgs.connection
          ];
        };
      };
    }