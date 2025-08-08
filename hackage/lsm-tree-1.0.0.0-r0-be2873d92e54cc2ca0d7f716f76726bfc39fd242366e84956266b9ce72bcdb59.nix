{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { measure-batch-latency = false; rocksdb = true; };
    package = {
      specVersion = "3.4";
      identifier = { name = "lsm-tree"; version = "1.0.0.0"; };
      license = "Apache-2.0";
      copyright = "(c) 2023-2025 Cardano Development Foundation";
      maintainer = "oso@intersectmbo.org";
      author = "Duncan Coutts, Joris Dral, Matthias Heinzel, Wolfgang Jeltsch, Wen Kokke, and Alex Washburn";
      homepage = "";
      url = "";
      synopsis = "Log-structured merge-trees";
      description = "This package contains an efficient implementation of on-disk key–value storage, implemented as a log-structured merge-tree, LSM-tree or LSMT.\nAn LSM-tree is a data structure for key–value mappings, similar to \"Data.Map\", but optimized for large tables with a high insertion volume.\nIt has support for:\n\n*   Basic key–value operations, such as lookup, insert, and delete.\n*   Range lookups, which efficiently retrieve the values for all keys in a given range.\n*   Monoidal upserts which combine the stored and new values.\n*   BLOB storage which associates a large auxiliary BLOB with a key.\n*   Durable on-disk persistence and rollback via named snapshots.\n*   Cheap table duplication where all duplicates can be independently accessed and modified.\n*   High-performance lookups on SSDs using I\\/O batching and parallelism.\n\nThis package exports two modules:\n\n*   \"Database.LSMTree.Simple\"\n\n    This module exports a simplified API which picks sensible defaults for a number of configuration parameters.\n\n    It does not support upserts or BLOBs, due to their unintuitive interaction, see [Upsert and BLOB](#upsertandblob).\n\n    If you are looking at this package for the first time, it is strongly recommended that you start by reading this module.\n\n*   \"Database.LSMTree\"\n\n    This module exports the full API.\n\n== Upsert and BLOB #upsertandblob#\n\nThe interaction between upserts and BLOBs is unintuitive.\nA upsert updates the value associated with the key by combining the new and old values with a user-specified function.\nHowever, any BLOB associated with the key is simply deleted.\n\n== Portability #portability#\n\n* This package only supports 64-bit, little-endian systems.\n* On Windows, the package has only been tested with NTFS filesystems.\n* On Linux, executables using this package, including test and benchmark suites, must be compiled with the [@-threaded@](https://downloads.haskell.org/ghc/latest/docs/users_guide/phases.html#ghc-flag-threaded) RTS option enabled.\n\n== Concurrency #concurrency#\n\nLSM-trees can be used concurrently, but with a few restrictions:\n\n*   Each session locks its session directory.\n    This means that a database cannot be accessed from different processes at the same time.\n*   Tables can be used concurrently and concurrent use of read operations such as lookups is deterministic.\n    However, concurrent use of write operations such as insert or delete with any other operation results in a race condition.\n\n== Performance #performance#\n\nThe worst-case behaviour of the library is described using [big-O notation](http://en.wikipedia.org/wiki/Big_O_notation).\nThe documentation provides two measures of complexity:\n\n*   The time complexity of operations is described in terms of the number of disk I\\/O operations and referred to as the disk I\\/O complexity.\n    In practice, the time of the operations on LSM-trees is dominated by the number of disk I\\/O actions.\n*   The space complexity of tables is described in terms of the in-memory size of an LSM-tree table.\n    Both the in-memory and on-disk size of an LSM-tree table scale linearly with the number of physical entries.\n    However, the in-memory size of an LSM-tree table is smaller than its on-disk size by a significant constant.\n    This is discussed in detail below, under [In-memory size of tables](#performance_size).\n\nThe complexities are described in terms of the following variables and constants:\n\n*   The variable \\(n\\) refers to the number of /physical/ table entries.\n    A /physical/ table entry is any key–operation pair, e.g., @Insert k v@ or @Delete k@, whereas a /logical/ table entry is determined by all physical entries with the same key.\n    If the variable \\(n\\) is used to describe the complexity of an operation that involves multiple tables, it refers to the sum of all table entries.\n*   The variable \\(o\\) refers to the number of open tables and cursors in the session.\n*   The variable \\(s\\) refers to the number of snapshots in the session.\n*   The variable \\(b\\) usually refers to the size of a batch of inputs\\/outputs.\n    Its precise meaning is explained for each occurrence.\n*   The constant \\(B\\) refers to the size of the write buffer,\n    which is determined by the @TableConfig@ parameter @confWriteBufferAlloc@.\n*   The constant \\(T\\) refers to the size ratio of the table,\n    which is determined by the @TableConfig@ parameter @confSizeRatio@.\n*   The constant \\(P\\) refers to the average number of key–value pairs that fit in a page of memory.\n\n=== Disk I\\/O cost of operations #performance_time#\n\nThe following table summarises the worst-case cost of the operations on LSM-trees measured in the number of disk I\\/O operations.\nIf the cost depends on the merge policy or merge schedule, then the table contains one entry for each relevant combination.\nOtherwise, the merge policy and\\/or merge schedule is listed as N\\/A.\nThe merge policy and merge schedule are determined by the @TableConfig@ parameters @confMergePolicy@ and @confMergeSchedule@.\n\n+----------+------------------------+-----------------+-----------------+------------------------------------------------+\n| Resource | Operation              | Merge policy    | Merge schedule  | Worst-case disk I\\/O complexity                |\n+==========+========================+=================+=================+================================================+\n| Session  | Open                   | N\\/A            | N\\/A            | \\(O(1)\\)                                       |\n+----------+------------------------+-----------------+-----------------+------------------------------------------------+\n|          | Close                  | @LazyLevelling@ | N\\/A            | \\(O(o \\: T \\: \\log_T \\frac{n}{B})\\)            |\n+----------+------------------------+-----------------+-----------------+------------------------------------------------+\n| Table    | New                    | N\\/A            | N\\/A            | \\(O(1)\\)                                       |\n+----------+------------------------+-----------------+-----------------+------------------------------------------------+\n|          | Close                  | @LazyLevelling@ | N\\/A            | \\(O(T \\: \\log_T \\frac{n}{B})\\)                 |\n+----------+------------------------+-----------------+-----------------+------------------------------------------------+\n|          | Lookup                 | @LazyLevelling@ | N\\/A            | \\(O(T \\: \\log_T \\frac{n}{B})\\)                 |\n+----------+------------------------+-----------------+-----------------+------------------------------------------------+\n|          | Range Lookup           | N\\/A            | N\\/A            | \\(O(T \\: \\log_T \\frac{n}{B} + \\frac{b}{P})\\)*  |\n+----------+------------------------+-----------------+-----------------+------------------------------------------------+\n|          | Insert\\/Delete\\/Update | @LazyLevelling@ | @Incremental@   | \\(O(\\frac{1}{P} \\: \\log_T \\frac{n}{B})\\)       |\n+----------+------------------------+-----------------+-----------------+------------------------------------------------+\n|          |                        | @LazyLevelling@ | @OneShot@       | \\(O(\\frac{n}{P})\\)                             |\n+----------+------------------------+-----------------+-----------------+------------------------------------------------+\n|          | Duplicate              | N\\/A            | N\\/A            | \\(O(0)\\)                                       |\n+----------+------------------------+-----------------+-----------------+------------------------------------------------+\n|          | Union                  | N\\/A            | N\\/A            | \\(O(\\frac{n}{P})\\)                             |\n+----------+------------------------+-----------------+-----------------+------------------------------------------------+\n| Snapshot | Save                   | @LazyLevelling@ | N\\/A            | \\(O(T \\: \\log_T \\frac{n}{B})\\)                 |\n+----------+------------------------+-----------------+-----------------+------------------------------------------------+\n|          | Open                   | N\\/A            | N\\/A            | \\(O(\\frac{n}{P})\\)                             |\n+----------+------------------------+-----------------+-----------------+------------------------------------------------+\n|          | Delete                 | @LazyLevelling@ | N\\/A            | \\(O(T \\: \\log_T \\frac{n}{B})\\)                 |\n+----------+------------------------+-----------------+-----------------+------------------------------------------------+\n|          | List                   | N\\/A            | N\\/A            | \\(O(s)\\)                                       |\n+----------+------------------------+-----------------+-----------------+------------------------------------------------+\n| Cursor   | New                    | @LazyLevelling@ | N\\/A            | \\(O(T \\: \\log_T \\frac{n}{B})\\)                 |\n+----------+------------------------+-----------------+-----------------+------------------------------------------------+\n|          | Close                  | @LazyLevelling@ | N\\/A            | \\(O(T \\: \\log_T \\frac{n}{B})\\)                 |\n+----------+------------------------+-----------------+-----------------+------------------------------------------------+\n|          | Next                   | N\\/A            | N\\/A            | \\(O(\\frac{1}{P})\\)                             |\n+----------+------------------------+-----------------+-----------------+------------------------------------------------+\n\n(*The variable \\(b\\) refers to the number of entries retrieved by the range lookup.)\n\n=== Table Size #performance_size#\n\nThe in-memory and the on-disk size of an LSM-tree scale /linearly/ with the number of physical entries.\nHowever, the in-memory size is smaller by a significant factor.\nLet us look at a table that uses the default configuration and has 100 million entries with 34 byte keys and 60 byte values.\nThe total size of 100 million key–value pairs is approximately 8.75GiB.\nHence, the on-disk size would be at least 8.75GiB, not counting the overhead for metadata.\n\nThe in-memory size would be approximately 265.39MiB:\n\n*   The write buffer would store at most 20,000 entries, which is approximately 2.86MiB.\n*   The fence-pointer indexes would store approximately 2.29 million keys, which is approximately 9.30MiB.\n*   The Bloom filters would use 15.78 bits per entry, which is approximately 188.11MiB.\n\nFor a discussion of how the sizes of these components are determined by the table configuration, see [Fine-tuning Table Configuration](#fine_tuning).\n\nThe total size of an LSM-tree must not exceed \\(2^{41}\\) physical entries.\nViolation of this condition /is/ checked and will throw a 'TableTooLargeError'.\n\n=== Fine-tuning Table Configuration #fine_tuning#\n\n[@confMergePolicy@]\n    The /merge policy/ balances the performance of lookups against the performance of updates.\n    Levelling favours lookups.\n    Tiering favours updates.\n    Lazy levelling strikes a middle ground between levelling and tiering, and moderately favours updates.\n    This parameter is explicitly referenced in the documentation of those operations it affects.\n\n[@confSizeRatio@]\n    The /size ratio/ pushes the effects of the merge policy to the extreme.\n    If the size ratio is higher, levelling favours lookups more, and tiering and lazy levelling favour updates more.\n    This parameter is referred to as \\(T\\) in the disk I\\/O cost of operations.\n\n[@confWriteBufferAlloc@]\n    The /write buffer capacity/ balances the performance of lookups and updates against the in-memory size of the table.\n    If the write buffer is larger, it takes up more memory, but lookups and updates are more efficient.\n    This parameter is referred to as \\(B\\) in the disk I\\/O cost of operations.\n    Irrespective of this parameter, the write buffer size cannot exceed 4GiB.\n\n[@confMergeSchedule@]\n    The /merge schedule/ balances the performance of lookups and updates against the smooth performance of updates.\n    The merge schedule does not affect the performance of table unions.\n    With the one-shot merge schedule, lookups and updates are more efficient overall, but some updates may take much longer than others.\n    With the incremental merge schedule, lookups and updates are less efficient overall, but each update does a similar amount of work.\n    This parameter is explicitly referenced in the documentation of those operations it affects.\n\n[@confBloomFilterAlloc@]\n    The Bloom filter size balances the performance of lookups against the in-memory size of the table.\n    If the Bloom filters are larger, they take up more memory, but lookup operations are more efficient.\n\n[@confFencePointerIndex@]\n    The /fence-pointer index type/ supports two types of indexes.\n    The /ordinary/ indexes are designed to work with any key.\n    The /compact/ indexes are optimised for the case where the keys in the database are uniformly distributed, e.g., when the keys are hashes.\n\n[@confDiskCachePolicy@]\n    The /disk cache policy/ determines if lookup operations use the OS page cache.\n    Caching may improve the performance of lookups and updates if database access follows certain patterns.\n\n[@confMergeBatchSize@]\n    The merge batch size balances the maximum latency of individual update\n    operations, versus the latency of a sequence of update operations. Bigger\n    batches improves overall performance but some updates will take a lot\n    longer than others. The default is to use a large batch size.\n\n==== Fine-tuning: Merge Policy, Size Ratio, and Write Buffer Size #fine_tuning_data_layout#\n\nThe configuration parameters @confMergePolicy@, @confSizeRatio@, and @confWriteBufferAlloc@ affect how the table organises its data.\nTo understand what effect these parameters have, one must have a basic understanding of how an LSM-tree stores its data.\nThe physical entries in an LSM-tree are key–operation pairs, which pair a key with an operation such as an @Insert@ with a value or a @Delete@.\nThese key–operation pairs are organised into /runs/, which are sequences of key–operation pairs sorted by their key.\nRuns are organised into /levels/, which are unordered sequences or runs.\nLevels are organised hierarchically.\nLevel 0 is kept in memory, and is referred to as the /write buffer/.\nAll subsequent levels are stored on disk, with each run stored in its own file.\nThe following shows an example LSM-tree layout, with each run as a boxed sequence of keys and each level as a row.\n\n\\[\n\\begin{array}{l:l}\n\\text{Level}\n&\n\\text{Data}\n\\\\\n0\n&\n\\fbox{\\(\\texttt{4}\\,\\_\\)}\n\\\\\n1\n&\n\\fbox{\\(\\texttt{1}\\,\\texttt{3}\\)}\n\\quad\n\\fbox{\\(\\texttt{2}\\,\\texttt{7}\\)}\n\\\\\n2\n&\n\\fbox{\\(\\texttt{0}\\,\\texttt{2}\\,\\texttt{3}\\,\\texttt{4}\\,\\texttt{5}\\,\\texttt{6}\\,\\texttt{8}\\,\\texttt{9}\\)}\n\\end{array}\n\\]\n\nThe data in an LSM-tree is /partially sorted/: only the key–operation pairs within each run are sorted and deduplicated.\nAs a rule of thumb, keeping more of the data sorted means lookup operations are faster but update operations are slower.\n\nThe configuration parameters @confMergePolicy@, @confSizeRatio@, and @confWriteBufferAlloc@ directly affect a table's data layout.\nThe parameter @confWriteBufferAlloc@ determines the capacity of the write buffer.\n\n[@AllocNumEntries maxEntries@]:\n    The write buffer can contain at most @maxEntries@ entries.\n    The constant \\(B\\) refers to the value of @maxEntries@.\n    Irrespective of this parameter, the write buffer size cannot exceed 4GiB.\n\nThe parameter @confSizeRatio@ determines the ratio between the capacities of successive levels.\nThe constant \\(T\\) refers to the value of @confSizeRatio@.\nFor instance, if \\(B = 2\\) and \\(T = 2\\), then\n\n\\[\n\\begin{array}{l:l}\n\\text{Level}   & \\text{Capacity}\n\\\\\n0              & B \\cdot T^0 = 2\n\\\\\n1              & B \\cdot T^1 = 4\n\\\\\n2              & B \\cdot T^2 = 8\n\\\\\n\\ell           & B \\cdot T^\\ell\n\\end{array}\n\\]\n\nThe merge policy @confMergePolicy@ determines the number of runs per level.\nIn a /tiering/ LSM-tree, each level contains \\(T\\) runs.\nIn a /levelling/ LSM-tree, each level contains one single run.\nThe /lazy levelling/ policy uses levelling only for the last level and uses tiering for all preceding levels.\nThe previous example used lazy levelling.\nThe following examples illustrate the different merge policies using the same data, assuming \\(B = 2\\) and \\(T = 2\\).\n\n\\[\n\\begin{array}{l:l:l:l}\n\\text{Level}\n&\n\\text{Tiering}\n&\n\\text{Levelling}\n&\n\\text{Lazy Levelling}\n\\\\\n0\n&\n\\fbox{\\(\\texttt{4}\\,\\_\\)}\n&\n\\fbox{\\(\\texttt{4}\\,\\_\\)}\n&\n\\fbox{\\(\\texttt{4}\\,\\_\\)}\n\\\\\n1\n&\n\\fbox{\\(\\texttt{1}\\,\\texttt{3}\\)}\n\\quad\n\\fbox{\\(\\texttt{2}\\,\\texttt{7}\\)}\n&\n\\fbox{\\(\\texttt{1}\\,\\texttt{2}\\,\\texttt{3}\\,\\texttt{7}\\)}\n&\n\\fbox{\\(\\texttt{1}\\,\\texttt{3}\\)}\n\\quad\n\\fbox{\\(\\texttt{2}\\,\\texttt{7}\\)}\n\\\\\n2\n&\n\\fbox{\\(\\texttt{4}\\,\\texttt{5}\\,\\texttt{7}\\,\\texttt{8}\\)}\n\\quad\n\\fbox{\\(\\texttt{0}\\,\\texttt{2}\\,\\texttt{3}\\,\\texttt{9}\\)}\n&\n\\fbox{\\(\\texttt{0}\\,\\texttt{2}\\,\\texttt{3}\\,\\texttt{4}\\,\\texttt{5}\\,\\texttt{6}\\,\\texttt{8}\\,\\texttt{9}\\)}\n&\n\\fbox{\\(\\texttt{0}\\,\\texttt{2}\\,\\texttt{3}\\,\\texttt{4}\\,\\texttt{5}\\,\\texttt{6}\\,\\texttt{8}\\,\\texttt{9}\\)}\n\\end{array}\n\\]\n\nTiering favours the performance of updates.\nLevelling favours the performance of lookups.\nLazy levelling strikes a middle ground between tiering and levelling.\nIt favours the performance of lookup operations for the oldest data and enables more deduplication,\nwithout the impact that full levelling has on update operations.\n\n==== Fine-tuning: Merge Schedule #fine_tuning_merge_schedule#\n\nThe configuration parameter @confMergeSchedule@ affects the worst-case performance of lookup and update operations and the structure of runs.\nRegardless of the merge schedule, the amortised disk I\\/O complexity of lookups and updates is /logarithmic/ in the size of the table.\nWhen the write buffer fills up, its contents are flushed to disk as a run and added to level 1.\nWhen some level fills up, its contents are flushed down to the next level.\nEventually, as data is flushed down, runs must be merged.\nThis package supports two schedules for merging:\n\n*   Using the @OneShot@ merge schedule, runs must always be kept fully sorted and deduplicated.\n    However, flushing a run down to the next level may cause the next level to fill up,\n    in which case it too must be flushed and merged futher down.\n    In the worst case, this can cascade down the entire table.\n    Consequently, the worst-case disk I\\/O complexity of updates is /linear/ in the size of the table.\n    This is unacceptable for real-time systems and other use cases where unresponsiveness is unacceptable.\n*   Using the @Incremental@ merge schedule, runs can be /partially merged/, which allows the merging work to be spead out evenly across all update operations.\n    This aligns the worst-case and average-case disk I\\/O complexity of updates—both are /logarithmic/ in the size of the table.\n    The cost is a small constant overhead for both lookup and update operations.\n\nThe merge schedule does not affect the performance of table unions.\nThe amortised disk I\\/O complexity of one-shot unions is /linear/ in the size of the tables.\nInstead, there are separate operations for incremental and oneshot unions.\nFor incremental unions, it is up to the user to spread the merging work out evenly over time.\n\n==== Fine-tuning: Bloom Filter Size #fine_tuning_bloom_filter_size#\n\nThe configuration parameter @confBloomFilterAlloc@ affects the size of the Bloom filters,\nwhich balances the performance of lookups against the in-memory size of the table.\n\nTables maintain a [Bloom filter](https://en.wikipedia.org/wiki/Bloom_filter) in memory for each run on disk.\nThese Bloom filters are probablilistic datastructures that are used to track which keys are present in their corresponding run.\nQuerying a Bloom filter returns either \\\"maybe\\\" meaning the key is possibly in the run or \\\"no\\\" meaning the key is definitely not in the run.\nWhen a query returns \\\"maybe\\\" while the key is /not/ in the run, this is referred to as a /false positive/.\nWhile the database executes a lookup operation, any Bloom filter query that returns a false positive causes the database to unnecessarily read a page from disk.\nThe probabliliy of these spurious reads follow a [binomial distribution](https://en.wikipedia.org/wiki/Binomial_distribution) \\(\\text{Binomial}(r,\\text{FPR})\\)\nwhere \\(r\\) refers to the number of runs and \\(\\text{FPR}\\) refers to the false-positive rate of the Bloom filters.\nHence, the expected number of spurious reads for each lookup operation is \\(r\\cdot\\text{FPR}\\).\nThe number of runs \\(r\\) is proportional to the number of physical entries in the table. Its exact value depends on the merge policy of the table:\n\n[@LazyLevelling@]\n  \\(r = T (\\log_T\\frac{n}{B} - 1) + 1\\).\n\nThe false-positive rate scales exponentially with size of the Bloom filters in bits per entry.\n\n+---------------------------+----------------------+\n| False-positive rate (FPR) | Bits per entry (BPE) |\n+===========================+======================+\n| \\(1\\text{ in }10\\)        | \\(\\approx  4.77 \\)   |\n+---------------------------+----------------------+\n| \\(1\\text{ in }100\\)       | \\(\\approx  9.85 \\)   |\n+---------------------------+----------------------+\n| \\(1\\text{ in }1{,}000\\)   | \\(\\approx 15.78 \\)   |\n+---------------------------+----------------------+\n| \\(1\\text{ in }10{,}000\\)  | \\(\\approx 22.57 \\)   |\n+---------------------------+----------------------+\n| \\(1\\text{ in }100{,}000\\) | \\(\\approx 30.22 \\)   |\n+---------------------------+----------------------+\n\nThe configuration parameter @confBloomFilterAlloc@ can be specified in two ways:\n\n[@AllocFixed bitsPerEntry@]\n    Allocate the requested number of bits per entry in the table.\n\n    The value must strictly positive, but fractional values are permitted.\n    The recommended range is \\([2, 24]\\).\n\n[@AllocRequestFPR falsePositiveRate@]\n    Allocate the required number of bits per entry to get the requested false-positive rate.\n\n    The value must be in the range \\((0, 1)\\).\n    The recommended range is \\([1\\mathrm{e}{ -5 },1\\mathrm{e}{ -2 }]\\).\n\nThe total in-memory size of all Bloom filters scales /linearly/ with the number of physical entries in the table and is determined by the number of physical entries multiplied by the number of bits per physical entry, i.e, \\(n\\cdot\\text{BPE}\\).\nLet us consider a table with 100 million physical entries which uses the default table configuration for every parameter other than the Bloom filter size.\n\n+---------------------------+----------------------+------------------------------------------------------------------+\n| False-positive rate (FPR) | Bloom filter size    | Expected spurious reads per lookup                               |\n+===========================+======================+==================================================================+\n| \\(1\\text{ in }10\\)        | \\( 56.86\\text{MiB}\\) | \\( 2.56\\text{ spurious reads every lookup }\\)                    |\n+---------------------------+----------------------+------------------------------------------------------------------+\n| \\(1\\text{ in }100\\)       | \\(117.42\\text{MiB}\\) | \\( 1   \\text{ spurious read every }    3.91\\text{ lookups }\\)    |\n+---------------------------+----------------------+------------------------------------------------------------------+\n| \\(1\\text{ in }1{,}000\\)   | \\(188.11\\text{MiB}\\) | \\( 1   \\text{ spurious read every }   39.10\\text{ lookups }\\)    |\n+---------------------------+----------------------+------------------------------------------------------------------+\n| \\(1\\text{ in }10{,}000\\)  | \\(269.06\\text{MiB}\\) | \\( 1   \\text{ spurious read every }  391.01\\text{ lookups }\\)    |\n+---------------------------+----------------------+------------------------------------------------------------------+\n| \\(1\\text{ in }100{,}000\\) | \\(360.25\\text{MiB}\\) | \\( 1   \\text{ spurious read every } 3910.19\\text{ lookups }\\)    |\n+---------------------------+----------------------+------------------------------------------------------------------+\n\n==== Fine-tuning: Fence-Pointer Index Type #fine_tuning_fence_pointer_index_type#\n\nThe configuration parameter @confFencePointerIndex@ affects the type and size of the fence-pointer indexes.\nTables maintain a fence-pointer index in memory for each run on disk.\nThese fence-pointer indexes store the keys at the boundaries of each page of memory to ensure that each lookup has to read at most one page of memory from each run.\nTables support two types of fence-pointer indexes:\n\n[@OrdinaryIndex@]\n    Ordinary indexes are designed for any use case.\n\n    Ordinary indexes store one serialised key per page of memory.\n    The average total in-memory size of all indexes is \\(K \\cdot \\frac{n}{P}\\) bits,\n    where \\(K\\) refers to the average size of a serialised key in bits.\n\n[@CompactIndex@]\n    Compact indexes are designed for the use case where the keys in the table are uniformly distributed, such as when using hashes.\n\n    Compact indexes store the 64 most significant bits of the minimum serialised key of each page of memory.\n    This requires that serialised keys are /at least/ 64 bits in size.\n    Compact indexes store 1 additional bit per page of memory to resolve collisions, 1 additional bit per page of memory to mark entries that are larger than one page, and a negligible amount of memory for tie breakers.\n    The average total in-memory size of all indexes is \\(66 \\cdot \\frac{n}{P}\\) bits.\n\n==== Fine-tuning: Disk Cache Policy #fine_tuning_disk_cache_policy#\n\nThe configuration parameter @confDiskCachePolicy@ determines how the database uses the OS page cache.\nThis may improve performance if the database's /access pattern/ has good /temporal locality/ or good /spatial locality/.\nThe database's access pattern refers to the pattern by which entries are accessed by lookup operations.\nAn access pattern has good temporal locality if it is likely to access entries that were recently accessed or updated.\nAn access pattern has good spatial locality if it is likely to access entries that have nearby keys.\n\n*   Use the @DiskCacheAll@ policy if the database's access pattern has either good spatial locality or both good spatial and temporal locality.\n*   Use the @DiskCacheLevelOneTo l@ policy if the database's access pattern has good temporal locality for updates only.\n    The variable @l@ determines the number of levels that are cached.\n    For a description of levels, see [Merge Policy, Size Ratio, and Write Buffer Size](#fine_tuning_data_layout).\n    With this setting, the database can be expected to cache up to \\(\\frac{k}{P}\\) pages of memory,\n    where \\(k\\) refers to the number of entries that fit in levels \\([1,l]\\) and is defined as \\(\\sum_{i=1}^{l}BT^{i}\\).\n*   Use the @DiskCacheNone@ policy if the database's access pattern has does not have good spatial or temporal locality.\n    For instance, if the access pattern is uniformly random.\n\n==== Fine-tuning: Merge Batch Size #fine_tuning_merge_batch_size#\n\nThe /merge batch size/ is a micro-tuning parameter, and in most cases you do\nneed to think about it and can leave it at its default.\n\nWhen using the 'Incremental' merge schedule, merging is done in batches. This\nis a trade-off: larger batches tends to mean better overall performance but the\ndownside is that while most updates (inserts, deletes, upserts) are fast, some\nare slower (when a batch of merging work has to be done).\n\nIf you care most about the maximum latency of updates, then use a small batch\nsize. If you don't care about latency of individual operations, just the\nlatency of the overall sequence of operations then use a large batch size. The\ndefault is to use a large batch size, the same size as the write buffer itself.\nThe minimum batch size is 1. The maximum batch size is the size of the write\nbuffer 'confWriteBufferAlloc'.\n\nNote that the actual batch size is the minimum of this configuration\nparameter and the size of the batch of operations performed (e.g. 'inserts').\nSo if you consistently use large batches, you can use a batch size of 1 and\nthe merge batch size will always be determined by the operation batch size.\n\nA further reason why it may be preferable to use minimal batch sizes is to get\ngood parallel work balance, when using parallelism.\n\n== References\n\nThe implementation of LSM-trees in this package draws inspiration from:\n\n*   Chris Okasaki.\n    1998.\n    \\\"Purely Functional Data Structures\\\"\n    [doi:10.1017/CBO9780511530104](https://doi.org/10.1017/CBO9780511530104)\n*   Niv Dayan, Manos Athanassoulis, and Stratos Idreos.\n    2017.\n    \\\"Monkey: Optimal Navigable Key-Value Store.\\\"\n    [doi:10.1145/3035918.3064054](https://doi.org/10.1145/3035918.3064054)\n*   Subhadeep Sarkar, Dimitris Staratzis, Ziehen Zhu, and Manos Athanassoulis.\n    2021.\n    \\\"Constructing and analyzing the LSM compaction design space.\\\"\n    [doi:10.14778/3476249.3476274](https://doi.org/10.14778/3476249.3476274)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."blockio" or (errorHandler.buildDepError "blockio"))
          (hsPkgs."contra-tracer" or (errorHandler.buildDepError "contra-tracer"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."fs-api" or (errorHandler.buildDepError "fs-api"))
          (hsPkgs."io-classes" or (errorHandler.buildDepError "io-classes"))
          (hsPkgs."io-classes".components.sublibs.strict-mvar or (errorHandler.buildDepError "io-classes:strict-mvar"))
          (hsPkgs."lsm-tree".components.sublibs.control or (errorHandler.buildDepError "lsm-tree:control"))
          (hsPkgs."lsm-tree".components.sublibs.core or (errorHandler.buildDepError "lsm-tree:core"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      sublibs = {
        "core" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bitvec" or (errorHandler.buildDepError "bitvec"))
            (hsPkgs."blockio" or (errorHandler.buildDepError "blockio"))
            (hsPkgs."bloomfilter-blocked" or (errorHandler.buildDepError "bloomfilter-blocked"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cborg" or (errorHandler.buildDepError "cborg"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."contra-tracer" or (errorHandler.buildDepError "contra-tracer"))
            (hsPkgs."crc32c" or (errorHandler.buildDepError "crc32c"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."fs-api" or (errorHandler.buildDepError "fs-api"))
            (hsPkgs."io-classes" or (errorHandler.buildDepError "io-classes"))
            (hsPkgs."io-classes".components.sublibs.strict-mvar or (errorHandler.buildDepError "io-classes:strict-mvar"))
            (hsPkgs."lsm-tree".components.sublibs.control or (errorHandler.buildDepError "lsm-tree:control"))
            (hsPkgs."lsm-tree".components.sublibs.kmerge or (errorHandler.buildDepError "lsm-tree:kmerge"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."serialise" or (errorHandler.buildDepError "serialise"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vector-algorithms" or (errorHandler.buildDepError "vector-algorithms"))
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "9.4") (hsPkgs."data-elevator" or (errorHandler.buildDepError "data-elevator"));
          buildable = true;
        };
        "extras" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bitvec" or (errorHandler.buildDepError "bitvec"))
            (hsPkgs."blockio" or (errorHandler.buildDepError "blockio"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."contra-tracer" or (errorHandler.buildDepError "contra-tracer"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."fs-api" or (errorHandler.buildDepError "fs-api"))
            (hsPkgs."fs-sim" or (errorHandler.buildDepError "fs-sim"))
            (hsPkgs."io-classes".components.sublibs.strict-mvar or (errorHandler.buildDepError "io-classes:strict-mvar"))
            (hsPkgs."io-classes".components.sublibs.strict-stm or (errorHandler.buildDepError "io-classes:strict-stm"))
            (hsPkgs."lsm-tree" or (errorHandler.buildDepError "lsm-tree"))
            (hsPkgs."lsm-tree".components.sublibs.control or (errorHandler.buildDepError "lsm-tree:control"))
            (hsPkgs."lsm-tree".components.sublibs.core or (errorHandler.buildDepError "lsm-tree:core"))
            (hsPkgs."lsm-tree".components.sublibs.kmerge or (errorHandler.buildDepError "lsm-tree:kmerge"))
            (hsPkgs."lsm-tree".components.sublibs.prototypes or (errorHandler.buildDepError "lsm-tree:prototypes"))
            (hsPkgs."nonempty-containers" or (errorHandler.buildDepError "nonempty-containers"))
            (hsPkgs."nothunks" or (errorHandler.buildDepError "nothunks"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."wide-word" or (errorHandler.buildDepError "wide-word"))
          ];
          buildable = true;
        };
        "mcg" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."primes" or (errorHandler.buildDepError "primes"))
          ];
          buildable = true;
        };
        "rocksdb" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."indexed-traversable" or (errorHandler.buildDepError "indexed-traversable"))
          ];
          libs = [ (pkgs."rocksdb" or (errorHandler.sysDepError "rocksdb")) ];
          buildable = if !(system.isLinux && flags.rocksdb)
            then false
            else true;
        };
        "kmerge" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."indexed-traversable" or (errorHandler.buildDepError "indexed-traversable"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          ];
          buildable = true;
        };
        "prototypes" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."contra-tracer" or (errorHandler.buildDepError "contra-tracer"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
          buildable = true;
        };
        "control" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."io-classes" or (errorHandler.buildDepError "io-classes"))
            (hsPkgs."io-classes".components.sublibs.strict-stm or (errorHandler.buildDepError "io-classes:strict-stm"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          ];
          buildable = true;
        };
      };
      tests = {
        "lsm-tree-test" = {
          depends = [
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
            (hsPkgs."barbies" or (errorHandler.buildDepError "barbies"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bitvec" or (errorHandler.buildDepError "bitvec"))
            (hsPkgs."blockio" or (errorHandler.buildDepError "blockio"))
            (hsPkgs."blockio".components.sublibs.sim or (errorHandler.buildDepError "blockio:sim"))
            (hsPkgs."bloomfilter-blocked" or (errorHandler.buildDepError "bloomfilter-blocked"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cborg" or (errorHandler.buildDepError "cborg"))
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."contra-tracer" or (errorHandler.buildDepError "contra-tracer"))
            (hsPkgs."crc32c" or (errorHandler.buildDepError "crc32c"))
            (hsPkgs."cryptohash-sha256" or (errorHandler.buildDepError "cryptohash-sha256"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."fs-api" or (errorHandler.buildDepError "fs-api"))
            (hsPkgs."fs-sim" or (errorHandler.buildDepError "fs-sim"))
            (hsPkgs."io-classes" or (errorHandler.buildDepError "io-classes"))
            (hsPkgs."io-classes".components.sublibs.strict-mvar or (errorHandler.buildDepError "io-classes:strict-mvar"))
            (hsPkgs."io-classes".components.sublibs.strict-stm or (errorHandler.buildDepError "io-classes:strict-stm"))
            (hsPkgs."io-sim" or (errorHandler.buildDepError "io-sim"))
            (hsPkgs."lsm-tree" or (errorHandler.buildDepError "lsm-tree"))
            (hsPkgs."lsm-tree".components.sublibs.control or (errorHandler.buildDepError "lsm-tree:control"))
            (hsPkgs."lsm-tree".components.sublibs.core or (errorHandler.buildDepError "lsm-tree:core"))
            (hsPkgs."lsm-tree".components.sublibs.extras or (errorHandler.buildDepError "lsm-tree:extras"))
            (hsPkgs."lsm-tree".components.sublibs.prototypes or (errorHandler.buildDepError "lsm-tree:prototypes"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."nothunks" or (errorHandler.buildDepError "nothunks"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-classes" or (errorHandler.buildDepError "quickcheck-classes"))
            (hsPkgs."quickcheck-dynamic" or (errorHandler.buildDepError "quickcheck-dynamic"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."quickcheck-lockstep" or (errorHandler.buildDepError "quickcheck-lockstep"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."safe-wild-cards" or (errorHandler.buildDepError "safe-wild-cards"))
            (hsPkgs."semialign" or (errorHandler.buildDepError "semialign"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-golden" or (errorHandler.buildDepError "tasty-golden"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."these" or (errorHandler.buildDepError "these"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vector-algorithms" or (errorHandler.buildDepError "vector-algorithms"))
            (hsPkgs."wide-word" or (errorHandler.buildDepError "wide-word"))
          ];
          buildable = true;
        };
        "kmerge-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."heaps" or (errorHandler.buildDepError "heaps"))
            (hsPkgs."lsm-tree".components.sublibs.kmerge or (errorHandler.buildDepError "lsm-tree:kmerge"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."splitmix" or (errorHandler.buildDepError "splitmix"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
        "map-range-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."lsm-tree".components.sublibs.core or (errorHandler.buildDepError "lsm-tree:core"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ];
          buildable = true;
        };
        "prototypes-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."contra-tracer" or (errorHandler.buildDepError "contra-tracer"))
            (hsPkgs."lsm-tree".components.sublibs.prototypes or (errorHandler.buildDepError "lsm-tree:prototypes"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-dynamic" or (errorHandler.buildDepError "quickcheck-dynamic"))
            (hsPkgs."quickcheck-lockstep" or (errorHandler.buildDepError "quickcheck-lockstep"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ];
          buildable = true;
        };
        "control-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."io-classes" or (errorHandler.buildDepError "io-classes"))
            (hsPkgs."io-sim" or (errorHandler.buildDepError "io-sim"))
            (hsPkgs."lsm-tree".components.sublibs.control or (errorHandler.buildDepError "lsm-tree:control"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ];
          buildable = true;
        };
        "demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."blockio" or (errorHandler.buildDepError "blockio"))
            (hsPkgs."blockio".components.sublibs.sim or (errorHandler.buildDepError "blockio:sim"))
            (hsPkgs."contra-tracer" or (errorHandler.buildDepError "contra-tracer"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."fs-api" or (errorHandler.buildDepError "fs-api"))
            (hsPkgs."fs-sim" or (errorHandler.buildDepError "fs-sim"))
            (hsPkgs."io-classes" or (errorHandler.buildDepError "io-classes"))
            (hsPkgs."io-sim" or (errorHandler.buildDepError "io-sim"))
            (hsPkgs."lsm-tree" or (errorHandler.buildDepError "lsm-tree"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "lsm-tree-micro-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."blockio" or (errorHandler.buildDepError "blockio"))
            (hsPkgs."bloomfilter-blocked" or (errorHandler.buildDepError "bloomfilter-blocked"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."contra-tracer" or (errorHandler.buildDepError "contra-tracer"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."fs-api" or (errorHandler.buildDepError "fs-api"))
            (hsPkgs."lsm-tree" or (errorHandler.buildDepError "lsm-tree"))
            (hsPkgs."lsm-tree".components.sublibs.control or (errorHandler.buildDepError "lsm-tree:control"))
            (hsPkgs."lsm-tree".components.sublibs.core or (errorHandler.buildDepError "lsm-tree:core"))
            (hsPkgs."lsm-tree".components.sublibs.extras or (errorHandler.buildDepError "lsm-tree:extras"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
        "lsm-tree-bench-bloomfilter" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bloomfilter-blocked" or (errorHandler.buildDepError "bloomfilter-blocked"))
            (hsPkgs."lsm-tree".components.sublibs.core or (errorHandler.buildDepError "lsm-tree:core"))
            (hsPkgs."lsm-tree".components.sublibs.extras or (errorHandler.buildDepError "lsm-tree:extras"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."wide-word" or (errorHandler.buildDepError "wide-word"))
          ];
          buildable = true;
        };
        "lsm-tree-bench-lookups" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."blockio" or (errorHandler.buildDepError "blockio"))
            (hsPkgs."bloomfilter-blocked" or (errorHandler.buildDepError "bloomfilter-blocked"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."fs-api" or (errorHandler.buildDepError "fs-api"))
            (hsPkgs."io-classes" or (errorHandler.buildDepError "io-classes"))
            (hsPkgs."lsm-tree".components.sublibs.control or (errorHandler.buildDepError "lsm-tree:control"))
            (hsPkgs."lsm-tree".components.sublibs.core or (errorHandler.buildDepError "lsm-tree:core"))
            (hsPkgs."lsm-tree".components.sublibs.extras or (errorHandler.buildDepError "lsm-tree:extras"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vector-algorithms" or (errorHandler.buildDepError "vector-algorithms"))
          ];
          buildable = true;
        };
        "unions-bench" = {
          depends = [
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."lsm-tree" or (errorHandler.buildDepError "lsm-tree"))
            (hsPkgs."lsm-tree".components.sublibs.extras or (errorHandler.buildDepError "lsm-tree:extras"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
        "utxo-bench" = {
          depends = [
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."blockio" or (errorHandler.buildDepError "blockio"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."contra-tracer" or (errorHandler.buildDepError "contra-tracer"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."fs-api" or (errorHandler.buildDepError "fs-api"))
            (hsPkgs."lsm-tree" or (errorHandler.buildDepError "lsm-tree"))
            (hsPkgs."lsm-tree".components.sublibs.extras or (errorHandler.buildDepError "lsm-tree:extras"))
            (hsPkgs."lsm-tree".components.sublibs.mcg or (errorHandler.buildDepError "lsm-tree:mcg"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
        "utxo-rocksdb-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."cryptohash-sha256" or (errorHandler.buildDepError "cryptohash-sha256"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."lsm-tree".components.sublibs.mcg or (errorHandler.buildDepError "lsm-tree:mcg"))
            (hsPkgs."lsm-tree".components.sublibs.rocksdb or (errorHandler.buildDepError "lsm-tree:rocksdb"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
          ];
          buildable = if !(system.isLinux && flags.rocksdb)
            then false
            else true;
        };
        "kmerge-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."heaps" or (errorHandler.buildDepError "heaps"))
            (hsPkgs."lsm-tree".components.sublibs.kmerge or (errorHandler.buildDepError "lsm-tree:kmerge"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."splitmix" or (errorHandler.buildDepError "splitmix"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
      };
    };
  }