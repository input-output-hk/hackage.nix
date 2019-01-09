{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "xdg-basedir"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 Will Donnelly";
      maintainer = "Will Donnelly <will.donnelly@gmail.com>";
      author = "Will Donnelly";
      homepage = "http://github.com/willdonnelly/xdg-basedir";
      url = "";
      synopsis = "A basic implementation of the XDG Base Directory specification.";
      description = "On Unix platforms, this should be a very straightforward\nimplementation of the XDG Base Directory spec. On Windows,\nit will attempt to do the right thing with regards to\nchoosing appropriate directories.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.directory) (hsPkgs.filepath) ];
        };
      };
    }