{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "distributed-process-monad-control";
        version = "0.5.0";
        };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jeremy@jeremyhuffman.com";
      author = "Jeremy Huffman";
      homepage = "http://haskell-distributed.github.io";
      url = "";
      synopsis = "Orphan instances for MonadBase and MonadBaseControl.";
      description = "This module only exports instances for @'MonadBase' @'IO' and\n@'MonadBaseControl' @'IO' for the @'Process' monad. This is for use\nin conjunction with a library requiring these instances, such as the\n@<http://hackage.haskell.org/package/lifted-base lifted-base> package.\n\nexample usage:\n\n>import Control.Distributed.Process.MonadBaseControl()\n>import Control.Concurrent.MVar.Lifted (withMVar)\n>\n>processWithMVar :: MVar a -> (a -> Process b) -> Process b\n>processWithMvar = withMVar";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."distributed-process" or ((hsPkgs.pkgs-errors).buildDepError "distributed-process"))
          (hsPkgs."monad-control" or ((hsPkgs.pkgs-errors).buildDepError "monad-control"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."transformers-base" or ((hsPkgs.pkgs-errors).buildDepError "transformers-base"))
          ];
        buildable = true;
        };
      };
    }