{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "data-dispersal";
          version = "1.0.0.0";
        };
        license = "LGPL-2.1-only";
        copyright = "Peter Robinson 2014";
        maintainer = "peter.robinson@monoid.at";
        author = "Peter Robinson <peter.robinson@monoid.at>";
        homepage = "http://monoid.at/code";
        url = "";
        synopsis = "Space-efficient and privacy-preserving data dispersal algorithms.";
        description = "This library provides space-efficient (m,n)-information dispersal algorithms (IDAs).\n\nGiven a ByteString @bstr@ of length @D@, we encode @bstr@ as a list @fs@ of @n@\n'Fragment's, each containing a ByteString\nof length @O(D/m)@. Then, each fragment in @fs@ could be stored on a separate\nmachine for fault-tolerance.\nEven if up to @n-m@ of these machines crash, we can still reconstruct the original\nByteString out of the remaining m fragments.\nThe total space required for the n fragments is @O((n/m)*D)@.\nNote that @m@ and @n@ are roughly in the same order, so the actual storage overhead\nfor getting good fault-tolerance increases only by a constant factor.\n\nThe module @Data.IDA@ contains the basic information dispersal algorithm. The module\n@Crypto.IDA@ augments the dispersal scheme by combining it with secret sharing, i.e.,\nthe knowledge of up to @m-1@ fragments does not leak any information about\nthe original data. See \"Crypto.IDA\" for details.\n\n/GHCi Example:/\n\n> > :m + Data.IDA\n> > let msg = Data.ByteString.Char8.pack \"my really important data\"\n> > let fragments = encode 5 15 msg\n> -- Now we could distributed the fragments on different sites to add some\n> -- fault-tolerance.\n> > let frags' = drop 5 \$ take 10 fragments -- let's pretend that 10 machines crashed\n> > decode frags'\n> \"my really important data\"\n\n/Fault-Tolerance:/\n\nSuppose that we have @N@ machines and encode our data as @2log(N)@ fragments\nwith reconstruction threshold m = @log(N)@.\nLet's assume that we store each fragment on a separate machine and each\nmachine fails (independently) with probability at most 0.5.\n\n* What is the probability of our data being safe?\n@Pr[ at most n-m machines crash ] >= 1-0.5^(log(N)) = 1-N^(-1).@\n\n* What is the overhead in terms of space that we pay for this level of fault-tolerance?\nWe have n fragments, each of size D\\/m, so the total space is @n * D\\/ m =\n2D.@\nIn other words, we can guarantee that the data survives with high probability\nby increasing the required space by a constant factor.\n\nThis library is based on the following works:\n\n* \\\"Efficient Dispersal of\nInformation for Security, Load Balancing, and Fault Tolerance\\\", by Michael O.\nRabin, JACM 1989.\n\n* \\\"How to share a secret.\\\" by Adi Shamir.\nIn Communications of the ACM 22 (11): 612–613, 1979.\n\n* \\\"Secret Sharing Made Short\\\" Hugo Krawczyk.\nCRYPTO 1993: 136-146";
        buildType = "Simple";
      };
      components = {
        data-dispersal = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.vector
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.syb
            hsPkgs.binary
            hsPkgs.finite-field
            hsPkgs.matrix
            hsPkgs.AES
            hsPkgs.entropy
            hsPkgs.secret-sharing
          ];
        };
        tests = {
          Main = {
            depends  = [
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.array
              hsPkgs.vector
              hsPkgs.spool
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.syb
            ];
          };
        };
      };
    }