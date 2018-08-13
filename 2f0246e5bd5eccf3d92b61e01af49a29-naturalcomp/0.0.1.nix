{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      filepath = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "naturalcomp";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Hironao Komatsu <hirkmt@gmail.com>";
      author = "Hironao Komatsu";
      homepage = "not yet available";
      url = "";
      synopsis = "Natural-order string comparison";
      description = "Natural order string comparison is needed when e.g. one wants\nto compare file names or strings of software version.  It's\naimed to be compatible to glibc's strverscmp() function.";
      buildType = "Simple";
    };
    components = {
      "naturalcomp" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.utf8-string)
        ] ++ pkgs.lib.optional (_flags.filepath) (hsPkgs.system-filepath);
      };
    };
  }