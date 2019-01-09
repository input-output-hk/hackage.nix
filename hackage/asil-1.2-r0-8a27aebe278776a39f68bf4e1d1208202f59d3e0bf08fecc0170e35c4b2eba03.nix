{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "asil"; version = "1.2"; };
      license = "LicenseRef-LGPL";
      copyright = "Universiteit Utrecht, FITTEST project";
      maintainer = "Arie Middelkoop <ariem@cs.uu.nl>";
      author = "";
      homepage = "http://www.pros.upv.es/fittest/";
      url = "";
      synopsis = "Action Script Instrumentation Library";
      description = "A library for the analysis and instrumentation of ActionScript programs in Flash files.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.utf8-string)
          (hsPkgs.array)
          (hsPkgs.mtl)
          (hsPkgs.data-binary-ieee754)
          (hsPkgs.binary)
          (hsPkgs.zlib)
          (hsPkgs.pretty)
          (hsPkgs.containers)
          (hsPkgs.uuagc)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.zip-archive)
          ];
        };
      };
    }