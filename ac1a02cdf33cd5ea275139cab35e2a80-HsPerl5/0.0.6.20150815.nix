{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "HsPerl5";
          version = "0.0.6.20150815";
        };
        license = "BSD-3-Clause";
        copyright = "2008-2015 Audrey Tang";
        maintainer = "Audrey Tang <audreyt@audreyt.org>";
        author = "Audrey Tang <audreyt@audreyt.org>";
        homepage = "";
        url = "";
        synopsis = "Haskell interface to embedded Perl 5 interpreter";
        description = "This module provides a Haskell interface to embedded Perl 5 interpreter.\nDocumentation and functionality is scarce at the moment; see test.hs for\nsome basic usage examples.\nCurrently supported features are:\n* Function calls\n* Method calls\n* Module imports\n* Callbacks\nEventually, the entirety of Pugs.Embed.Perl5 and Pugs.Run.Perl5 will be\ncarried into this module.";
        buildType = "Custom";
      };
      components = {
        HsPerl5 = {
          depends  = [ hsPkgs.base ];
        };
      };
    }