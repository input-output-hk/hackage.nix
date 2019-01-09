{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "protocol-buffers-fork"; version = "2.0.16"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008-2012 Christopher Edward Kuklewicz";
      maintainer = "Stefan Wehr <wehr@cp-med.com>";
      author = "Christopher Edward Kuklewicz";
      homepage = "http://darcs.factisresearch.com/pub/protocol-buffers-fork/";
      url = "http://hackage.haskell.org/package/protocol-buffers-fork";
      synopsis = "Parse Google Protocol Buffer specifications";
      description = "Parse proto files and generate Haskell code. This is a fork of the protocol-buffers library at http://hackage.haskell.org/package/protocol-buffers";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.array)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.mtl)
          (hsPkgs.utf8-string)
          ] ++ (if flags.small_base
          then [ (hsPkgs.base) (hsPkgs.syb) ]
          else [ (hsPkgs.base) ]);
        };
      };
    }