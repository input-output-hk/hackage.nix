{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.22";
      identifier = {
        name = "haskdogs";
        version = "0.4.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "grrwlf@gmail.com";
      author = "Sergey Mironov";
      homepage = "http://github.com/grwlf/haskdogs";
      url = "";
      synopsis = "Generate tags file for Haskell project and its nearest deps";
      description = "Haskdogs is a 300-lines tool which creates tag file for entire Haskell\nproject directory. It takes into account first-level dependencies by\nrecursively scanning imports and adding matching packages to the final tag\nlist.\nAs a result, programmer can use his/her text editor supporting tags (vim,\nfor example) to jump directly to definition of any standard or foreign\nfunction he/she uses.\nNote, that haskdogs calls some Unix shell commands like 'grep' so this tool\nwill likely fail to work on pure Windows platforms.\nStarting from 0.3, cmdline args will be passed to hasktags followed by a\nfilelist generated.\nStarting from 0.4, haskdogs will use stack toolchain.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "haskdogs" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.directory)
            (hsPkgs.optparse-applicative)
            (hsPkgs.process)
          ];
        };
      };
    };
  }