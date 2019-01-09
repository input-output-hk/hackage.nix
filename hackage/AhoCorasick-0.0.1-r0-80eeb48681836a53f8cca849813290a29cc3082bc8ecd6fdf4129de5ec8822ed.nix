{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "AhoCorasick"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Sergey S Lymar (c) 2012";
      maintainer = "Sergey S Lymar <sergey.lymar@gmail.com>";
      author = "Sergey S Lymar <sergey.lymar@gmail.com>";
      homepage = "http://github.com/lymar/AhoCorasick";
      url = "";
      synopsis = "Aho-Corasick string matching algorithm";
      description = "Aho-Corasick string matching algorithm.\n\nSee homepage for examples of usage: <http://github.com/lymar/AhoCorasick>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.unordered-containers)
          (hsPkgs.hashable)
          (hsPkgs.array)
          (hsPkgs.mtl)
          ];
        };
      };
    }