{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      directory--lt-1_2 = false;
    };
    package = {
      specVersion = "1.12";
      identifier = {
        name = "paths";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2015-2017 Well-Typed LLP,\n2017 Herbert Valerio Riedel";
      maintainer = "hvr@gnu.org";
      author = "Herbert Valerio Riedel";
      homepage = "";
      url = "";
      synopsis = "Library for representing and manipulating type-safe file paths";
      description = "This library provides a more type-safe version of 'FilePath's together with thin wrappers around common IO operations.\n\nThis library is directly derived from @hackage-security@'s\n<http://hackage.haskell.org/package/hackage-security-0.5.2.2/docs/Hackage-Security-Util-Path.html Hackage.Security.Util.Path>\nmodule.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.time)
        ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) (hsPkgs.transformers)) ++ (if flags.directory--lt-1_2
          then [
            (hsPkgs.directory)
            (hsPkgs.old-time)
          ]
          else [ (hsPkgs.directory) ]);
      };
    };
  }