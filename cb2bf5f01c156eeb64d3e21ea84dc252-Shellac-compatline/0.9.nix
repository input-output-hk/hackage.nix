{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      useeditline = true;
      usereadline = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2.2";
        identifier = {
          name = "Shellac-compatline";
          version = "0.9";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "robdockins AT fastmail DOT fm";
        author = "Robert Dockins";
        homepage = "http://www.cs.princeton.edu/~rdockins/shellac/home/";
        url = "";
        synopsis = "\"compatline\" backend module for Shellac";
        description = "This package provides a Shellac backend which acts a thin interface\nfor the Shellac-readline or Shellac-editline packages, depending\non avaliability.  Note that this package may be compiled against\nreadline, which is licended under the GPL.";
        buildType = "Simple";
      };
      components = {
        "Shellac-compatline" = {
          depends  = (([
            hsPkgs.base
            hsPkgs.haskell98
            hsPkgs.Shellac
          ] ++ pkgs.lib.optional _flags.useeditline hsPkgs.Shellac-editline) ++ pkgs.lib.optional (!_flags.useeditline && _flags.usereadline) hsPkgs.Shellac-readline) ++ pkgs.lib.optional (!_flags.useeditline && !_flags.usereadline) hsPkgs.DependencyResolutionFailure;
        };
      };
    }