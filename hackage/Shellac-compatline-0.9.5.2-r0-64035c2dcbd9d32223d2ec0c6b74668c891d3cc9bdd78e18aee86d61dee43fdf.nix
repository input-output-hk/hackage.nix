{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      useeditline = true;
      usereadline = false;
    };
    package = {
      specVersion = "1.2.2";
      identifier = {
        name = "Shellac-compatline";
        version = "0.9.5.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "robdockins AT fastmail DOT fm";
      author = "Robert Dockins";
      homepage = "http://rwd.rdockins.name/shellac/home/";
      url = "";
      synopsis = "\"compatline\" backend module for Shellac";
      description = "This package provides a Shellac backend which acts a thin interface\nfor the Shellac-readline or Shellac-editline packages, depending\non avaliability.  Note that this package may be compiled against\nreadline, which is licended under the GPL.";
      buildType = "Simple";
    };
    components = {
      "Shellac-compatline" = {
        depends  = (([
          (hsPkgs.base)
          (hsPkgs.Shellac)
        ] ++ pkgs.lib.optional (flags.useeditline) (hsPkgs.Shellac-editline)) ++ pkgs.lib.optional (!flags.useeditline && flags.usereadline) (hsPkgs.Shellac-readline)) ++ pkgs.lib.optional (!flags.useeditline && !flags.usereadline) (hsPkgs.DependencyResolutionFailure);
      };
    };
  }