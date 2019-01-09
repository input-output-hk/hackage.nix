{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { old-directory = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "paths"; version = "0.1"; };
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
        depends = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.time)
          (hsPkgs.bytestring)
          (hsPkgs.filepath)
          (hsPkgs.deepseq)
          ] ++ (if flags.old-directory
          then [ (hsPkgs.directory) (hsPkgs.old-time) ]
          else [ (hsPkgs.directory) ]);
        };
      };
    }