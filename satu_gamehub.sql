-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2026 at 12:37 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `satu_gamehub`
--

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `token` char(64) NOT NULL,
  `expires_at` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `token`, `expires_at`, `created_at`) VALUES
(3, 1, '9ac04c99d9ea664f4df7958e2b2db96cb94f8ae952473a7d030124c3c6481da7', '2026-08-27 08:40:05', '2026-08-20 01:40:05'),
(4, 3, '7fc0ceeba71512a32290066bb578afa86e31b245f4cba36184632a2012d7f522', '2026-08-27 08:40:59', '2026-08-20 01:40:59'),
(5, 4, '649f9c94346cbb7087bc6de38112307befe56d934597a3dd5b63c82b052b7edf', '2026-08-27 08:42:27', '2026-08-20 01:42:27'),
(8, 3, '3947cb727d18ddf33d1fe3eff99df616c845966803aff683ede285807ac28ca2', '2026-08-27 10:12:44', '2026-08-20 03:12:44'),
(9, 5, '8947a8dcc4dc29e6bd6b3fe8c86ea50fdd7ada8a1b83ecc5322a53e0810762e5', '2026-08-27 10:29:16', '2026-08-20 03:29:16'),
(10, 6, 'a2cf3963fdb42d370fb9bf9007ca85b5b4b4f2d5a2f7c8b10873bbfdc9d4914b', '2026-08-27 10:29:18', '2026-08-20 03:29:18'),
(11, 7, '57c2135ba9aa5398b67094533500263c5cfc6bbbe7ad8f19ef62ecddc66ab5f9', '2026-08-27 10:29:58', '2026-08-20 03:29:58'),
(12, 8, '0c3cca42feb274ebf4c65822f27f12a05c224e8169adeed271d760d595cfdcba', '2026-08-27 10:29:59', '2026-08-20 03:29:59'),
(13, 7, '1917f6195fac923a9c6e94f850c9c2ce2714221d6a48fc17d01f63ad5521d3d1', '2026-08-27 10:29:59', '2026-08-20 03:29:59'),
(14, 8, 'c2e67a8683550950d99e896d02021cd5c22ee74054e5aa2cdc182ac92987a54d', '2026-08-27 10:30:01', '2026-08-20 03:30:01'),
(15, 6, '3c2027f20f1cebc62b03a8fdfb08e9db60f3cdc2a5b69ac0565b399cefe636cb', '2026-08-27 10:30:01', '2026-08-20 03:30:01'),
(16, 6, '73f08c6b352cedd360f7b44544dea868dd82c01e1f3724289ef7cf6294a05d4e', '2026-08-27 10:30:03', '2026-08-20 03:30:03'),
(17, 9, 'fda7ec85d44e7ba6a6e6c2a64fe5edc85ea75467c501eda306b38c2af6bad380', '2026-08-27 10:30:07', '2026-08-20 03:30:07'),
(18, 9, '3900aa218fb2b0263bc29a231d3b22e61bd202cdf823229ba1447434b3562617', '2026-08-27 10:30:10', '2026-08-20 03:30:10'),
(19, 12, 'c9076a68abe951b18edd0874fa12ee93077b42b31f4b94ee5cfc3fc798598bcf', '2026-08-27 10:30:17', '2026-08-20 03:30:17'),
(20, 10, 'ea2e8d6a13e3f75674979e216d127f5780491caaa7e2dcc86b0dffa203fb1245', '2026-08-27 10:30:18', '2026-08-20 03:30:18'),
(21, 10, '8696884589c1da8d53a9ab658b5635bdf2a4a5fdc3f0dd8e8626ffeb4ac36366', '2026-08-27 10:30:20', '2026-08-20 03:30:20'),
(22, 11, '2c5e7189e460467f8a4634477f3d47d2706875f160f695a2ede08152f9517bf4', '2026-08-27 10:30:23', '2026-08-20 03:30:23'),
(23, 13, '6140766b51310617f626f4ee0c84b57b95ca996ca215882b2eaa263d29929caa', '2026-08-27 10:30:28', '2026-08-20 03:30:28'),
(24, 13, 'dc735186125cad107662e3718836caa5b386918df46fdbadb18ce14316905e0f', '2026-08-27 10:30:29', '2026-08-20 03:30:29'),
(25, 8, '87ef87c2577f3e52d344e60dde125232563cfae64374beb32a6e8c6679d46bea', '2026-08-27 10:30:45', '2026-08-20 03:30:45'),
(26, 8, 'f4ea7ca95fc95c1f7aa286413b5caf40782e1e2220ef69919e510a6f2c326716', '2026-08-27 10:30:50', '2026-08-20 03:30:50'),
(27, 8, '9bb07c97899e65e0f06d4ebddbf481246699b3094dff74b4becabb481ffa90f6', '2026-08-27 10:30:56', '2026-08-20 03:30:56'),
(28, 14, '83641b554d1062c9bc194e915ebf255cbe821916db459ba557e7e057b1556734', '2026-08-27 10:31:08', '2026-08-20 03:31:08'),
(29, 6, 'a3ab7e86467b24b36a74a8195585270e1a9511d1e48795e536361581c590c8ae', '2026-08-27 10:31:10', '2026-08-20 03:31:10'),
(30, 6, 'ec623aa5aeefeac12af1d33e408564d7a4f32d2fc6feeee57a32f33cc45b8e71', '2026-08-27 10:31:12', '2026-08-20 03:31:12'),
(31, 15, '36e13e633cfde1f40132ed4519b688da374f8143768711e22728434df1ffb17b', '2026-08-27 10:31:24', '2026-08-20 03:31:24'),
(32, 16, 'a967c3471c895d2fccbc5f3daffd50c481e0bdd9974ea2f5d14c47fcc536a780', '2026-08-27 10:31:41', '2026-08-20 03:31:41'),
(33, 17, 'b589f4720b28943a0a1a43c6ad6099a120d83389230863eecd26c537e79d9097', '2026-08-27 10:31:42', '2026-08-20 03:31:42'),
(34, 16, '842435a9c646f03d085a3c259467d7ee90d558bc60504c67916ec2c7015b22b5', '2026-08-27 10:31:43', '2026-08-20 03:31:43'),
(35, 17, 'bcfa9ccc4fb6c4951855cb47e672f8bd437b90d03bbb6db8ffdc970f4a27ea7c', '2026-08-27 10:31:45', '2026-08-20 03:31:45'),
(36, 18, '795eb7e37fa56c795cf20eac3d613c1ef835e2dd8924367f02879139261f3735', '2026-08-27 10:31:47', '2026-08-20 03:31:47'),
(37, 18, 'b91d00299467a17f34354dc9afe194e7f777fb9018c97df118e5b43927715123', '2026-08-27 10:31:49', '2026-08-20 03:31:49'),
(38, 18, '37e5a8b1fd78f175c2ff83e5fef8fe42f47e451fc46aa39a6aaff3f4480621ca', '2026-08-27 10:31:50', '2026-08-20 03:31:50'),
(39, 18, '632c921a8ad2125e102a4e1fdf423ac4778d6a4a12d7d52e48704ed93677fecf', '2026-08-27 10:31:51', '2026-08-20 03:31:51'),
(40, 18, '1bcb6f98fb1020026215d3c660325cbeb99729f32c878dc4c9accfec831a5b33', '2026-08-27 10:31:51', '2026-08-20 03:31:51'),
(41, 18, '4d4cfcc1ad9989c1939f602b1756153af3e6c78059ec880da9de1f7453e683fa', '2026-08-27 10:32:12', '2026-08-20 03:32:12'),
(42, 18, '5d59eb834f0237f8d500cc2a2064c40c189ade8b0d963223486f425c6ada9b84', '2026-08-27 10:32:13', '2026-08-20 03:32:13'),
(43, 18, '60932bd232641634ce08aecf62e7250e9e60f7adc732caca5eb6b6097b9cad74', '2026-08-27 10:32:13', '2026-08-20 03:32:13'),
(44, 18, '4161ff8d816880819fc34d503619476a50cac7fac8cb62db59703e8e9524721f', '2026-08-27 10:32:13', '2026-08-20 03:32:13'),
(45, 18, '55619f56783546885460eff40f847ea83d508676c95dca83abf4e4f444a2dbf2', '2026-08-27 10:32:14', '2026-08-20 03:32:14'),
(46, 18, '79156b9871566abdab70a4980ae68722c17a4fd205872d0388beeaf280f5ee83', '2026-08-27 10:32:17', '2026-08-20 03:32:17'),
(47, 18, 'ea1bd973960f1c4e515d3fc3609101259cd74754592f8d4168a1d9aec6a981e2', '2026-08-27 10:32:18', '2026-08-20 03:32:18'),
(48, 18, '5cf412b84ba6e9bdbba0f741bd2c38cc33552529df4d63805dd0d57dcd22c0aa', '2026-08-27 10:32:18', '2026-08-20 03:32:18'),
(49, 18, '376ef2c6050d6f4541828283af86b741f6e271eba32d7dbbe01516816c1ad500', '2026-08-27 10:32:18', '2026-08-20 03:32:18'),
(50, 18, 'c8b3f0330a38608a958bbeb86bce43221d429b88fd65e6e917c43f14eb865313', '2026-08-27 10:32:18', '2026-08-20 03:32:18'),
(51, 18, '7ea7acea80dc6136c669343bbd2a9fd794b803c0a8027ed5d852048f34ac8626', '2026-08-27 10:32:19', '2026-08-20 03:32:19'),
(52, 18, 'f060dbb627401b1d063570eab15b83ca44d9f946073134223960a48b8cbbef48', '2026-08-27 10:32:22', '2026-08-20 03:32:22'),
(53, 18, '269efe79695a408cf65573243b09864671b5a5b11ee7b6018aba885ca1994955', '2026-08-27 10:32:22', '2026-08-20 03:32:22'),
(54, 18, '1aa44157f88972eb796462862895c28611cded771eeb80a5f1d407a5fc89ca9d', '2026-08-27 10:32:22', '2026-08-20 03:32:22'),
(55, 18, 'ffa1d4dddd73735b44d65bb5fbd10f989f91449a67c717e972bfe6d373251924', '2026-08-27 10:32:23', '2026-08-20 03:32:23'),
(56, 18, 'ae27293763a99864dc883366fa02bd8a5b5bd2d9731951cf696e2f5fdf3348eb', '2026-08-27 10:32:24', '2026-08-20 03:32:24'),
(57, 18, 'be08556259b8c190dd2f6d59bea41a84d7296f1889da3955c8142d53b7e222da', '2026-08-27 10:32:24', '2026-08-20 03:32:24'),
(58, 18, 'f0c3a77b2c4ec07d87c608009ae49e570ce204220ce10ec810d947ab6158f78f', '2026-08-27 10:32:27', '2026-08-20 03:32:27'),
(59, 18, 'ae485a17ffc3bd147acc3f851625509360df5e8ca91272fa40f08f9f2bde82f6', '2026-08-27 10:32:27', '2026-08-20 03:32:27'),
(60, 18, '58231522b4927df94923d9f27c77bbdd939b57261f557d4e5adfffd06e4aec3c', '2026-08-27 10:32:27', '2026-08-20 03:32:27'),
(61, 18, 'da98158fe0c9f4c24a47bfd05b661f580d239e0c12195954691217905beed7d6', '2026-08-27 10:32:27', '2026-08-20 03:32:27'),
(62, 20, 'b6fcf511e137046c78c5aed0a7b07af16b5cdd64bba4965d2c66d83f6dd11dc5', '2026-08-27 10:32:29', '2026-08-20 03:32:29'),
(63, 18, '28929aa1960c956e1677a57e81139bcc90a08e434755f4ddce49ed20bb6fa832', '2026-08-27 10:32:30', '2026-08-20 03:32:30'),
(64, 18, '1b344706b85cb2ca8f6f02b7868df4ae177781f32a01e00de701473dafddabe8', '2026-08-27 10:32:30', '2026-08-20 03:32:30'),
(65, 20, 'b55b83a9d3303fc909f1b2a0d07df0e56f2f917afbde8de777e9e837a55d433d', '2026-08-27 10:32:30', '2026-08-20 03:32:30'),
(66, 19, 'b543f7210b47c3b654c0a783fcec0c4aa971b339620d91ca6c4aca6624b60f7b', '2026-08-27 10:32:33', '2026-08-20 03:32:33'),
(67, 20, '3ff1ed638781013e500b4537e087f945a85362728aaf6404a1a1d43e9bacd6ad', '2026-08-27 10:32:33', '2026-08-20 03:32:33'),
(68, 7, '94012de210a59a5b9095243ed147cd427d0a427db4e37a9d0981bf97aa3f9623', '2026-08-27 10:32:35', '2026-08-20 03:32:35'),
(69, 18, '8e4f45a4e892feecef70a8bc8943105de2d4a525164144ad41cbd9f18ed9a1ff', '2026-08-27 10:32:36', '2026-08-20 03:32:36'),
(70, 18, 'b887e4922bbf6ddab016ad7918534d90d8ed119931851e0ca0f0097ddb4a6109', '2026-08-27 10:32:36', '2026-08-20 03:32:36'),
(71, 18, '63f7f4d12b86dad615f4a4a497af5964ab2f36840663a39f4e4afa7a5c06a376', '2026-08-27 10:32:36', '2026-08-20 03:32:36'),
(72, 18, '3a1b73c9adefa0ea5e3baf74a746de50e810aaba2fce6344724bc1a8dbb06c7c', '2026-08-27 10:32:38', '2026-08-20 03:32:38'),
(73, 11, '680c51f042dd3f4f6263292992a5cd11994375338d2ec380b63a1a201b468143', '2026-08-27 10:32:39', '2026-08-20 03:32:39'),
(74, 7, 'eb60196502ac4d9f8f76b489078d51e4cda17340dd64701f69fb47378439391d', '2026-08-27 10:32:39', '2026-08-20 03:32:39'),
(75, 19, 'e638d4a33a5e4aa75b83ca004f37ffcc8d8b40a5d319eb38cae9a3568de20847', '2026-08-27 10:32:41', '2026-08-20 03:32:41'),
(76, 21, '50e5af75e637b5f1c1186d137701b4e2d85e60d955cfb5e05955ecd309bc8f8a', '2026-08-27 10:32:44', '2026-08-20 03:32:44'),
(77, 19, 'b8c67c6a101f55a4dfa73deca690cb477afddc20a02fa07684f7411eb4826e0d', '2026-08-27 10:32:44', '2026-08-20 03:32:44'),
(78, 18, '90046df8a448c43b2bbf22e2c9988c19dbf84ec50adbbf512d0a9bb60e86187a', '2026-08-27 10:32:44', '2026-08-20 03:32:44'),
(79, 11, '087fe5132b0a37f96f39e65befa5b2d9e29af9c1cea79dd9c7662328eb6111c3', '2026-08-27 10:32:44', '2026-08-20 03:32:44'),
(80, 19, '40718795664d7df5ec710bf98a4c3a77d082ed639baf0fb5a53fe6af36235932', '2026-08-27 10:32:44', '2026-08-20 03:32:44'),
(81, 24, 'f81e94c58f7f5a2e0c046907313ff99f4279b7406f122e0bd4783d450ecba3ae', '2026-08-27 10:32:45', '2026-08-20 03:32:45'),
(82, 11, 'ec54c3f8b965e5d7bdbb852ce5930701c6afe882da82c1824a06783226724386', '2026-08-27 10:32:45', '2026-08-20 03:32:45'),
(83, 18, 'a5980ec507dd97efce9646eb244b16cb828512c1b9fe36e71d8a7023dcdfbc23', '2026-08-27 10:32:45', '2026-08-20 03:32:45'),
(84, 19, 'b694feddc1009d843ab08182493ef926e6d2e58bfb55252664460090b31bdc81', '2026-08-27 10:32:45', '2026-08-20 03:32:45'),
(85, 11, '67a33cd7c3180df01f69a4354e2d228fd9aa4084764114cb5a992949bea66095', '2026-08-27 10:32:45', '2026-08-20 03:32:45'),
(86, 11, 'ad5cdd0c26ec34ef562f5e5052cb979e59279f73564080090fb4624260aabb63', '2026-08-27 10:32:45', '2026-08-20 03:32:45'),
(87, 7, 'e2c9d4f5ae357eba3031ad9a84d66934778c4c0b64dc85cfea038e3415983fd9', '2026-08-27 10:32:48', '2026-08-20 03:32:48'),
(88, 11, '13a8464e9ba3b224b9c5f4cba6f824b1f324e6f50ff942887bb1a963d869586f', '2026-08-27 10:32:48', '2026-08-20 03:32:48'),
(89, 19, '6da26b01e13c38e0cb4ea7d876e7920bb3564f28afc466b363e7dfb7fdab30f7', '2026-08-27 10:32:49', '2026-08-20 03:32:49'),
(90, 20, 'ca9d4035deb248e42e3b9040785c6626e24269fd14670f12eadf1c74d37386b8', '2026-08-27 10:32:51', '2026-08-20 03:32:51'),
(91, 24, 'e89ba9e6d7830a99cfac9726d0cf932d3059c3c7de23bee891ae55baed657542', '2026-08-27 10:32:51', '2026-08-20 03:32:51'),
(92, 18, '998ecbbcdfad320e29a748148a4c7aaf2fcec657d79d2002aac4d3d28dafd09d', '2026-08-27 10:32:53', '2026-08-20 03:32:53'),
(93, 18, 'db372b89aac496d712a44dbaed462d094ea46ac9016d108cd67534bf0aaa9eb3', '2026-08-27 10:32:53', '2026-08-20 03:32:53'),
(94, 18, 'ca8718db16027c90c4e51d14fa25c3edb40ed331760ced20a440adc7aa168c78', '2026-08-27 10:32:53', '2026-08-20 03:32:53'),
(95, 21, '24407c83e7e7120517b48663838258c2b28f564b3037c264226ad1447fbd56cb', '2026-08-27 10:32:53', '2026-08-20 03:32:53'),
(96, 18, '5e3b0df8223aa6029c99cbd533133c870f38a87b567eb3cad9528f01c038121a', '2026-08-27 10:32:53', '2026-08-20 03:32:53'),
(97, 7, 'f522a374b5402e25012f168439a2e075b7cd8970aba28fb9f6ad59921d3a53ed', '2026-08-27 10:32:54', '2026-08-20 03:32:54'),
(98, 11, 'd2bc74928425b1cc1a8add80f8878c4022eddaf2334d4cf5e614e85d86ee745d', '2026-08-27 10:32:55', '2026-08-20 03:32:55'),
(99, 19, 'e169b8298dbf9dbe38d2d83b794f682f5bf9d9d8538971445f78de1dd893c4fb', '2026-08-27 10:32:55', '2026-08-20 03:32:55'),
(100, 7, '059a192d13e8e9f62aa7163ba862a1656c36b56b5f4d8416a1a241c51aa931c3', '2026-08-27 10:32:56', '2026-08-20 03:32:56'),
(101, 11, '5e9099977925e35824887a2482a6eaf42f93b8eac1b2750da613992b84caf5e9', '2026-08-27 10:32:56', '2026-08-20 03:32:56'),
(102, 7, '7a7945fb149d1658d534dd98946c94c0af80f22745cf2920224dcffe95f954c7', '2026-08-27 10:32:56', '2026-08-20 03:32:56'),
(103, 11, 'b3acb7705a0952295c7d5e9da222cba757f9adff750fe2d7a02012282b757060', '2026-08-27 10:32:56', '2026-08-20 03:32:56'),
(104, 11, 'd0288fdd5bca2f1f41ec5e4cb7b6b44cf61ba1c29f17d0ed788da644e875ee9c', '2026-08-27 10:32:56', '2026-08-20 03:32:56'),
(105, 11, 'b0005816324496a7619b25e475c160be8f462f85503b14c00f96060d81775d3e', '2026-08-27 10:32:56', '2026-08-20 03:32:56'),
(106, 11, 'c18f28d4a09b05691767c91aba09012037b676b8260cf0528c2ad5db4d344f54', '2026-08-27 10:32:57', '2026-08-20 03:32:57'),
(107, 11, '136930b19e841e94810aff62959ff7076138e5098cd12ef4db2bae73f3de9fd5', '2026-08-27 10:32:57', '2026-08-20 03:32:57'),
(108, 11, '5ecb86d85905f206f09dbde29c62482a269a4a760dbbe60de0b5ac647de94cf3', '2026-08-27 10:33:00', '2026-08-20 03:33:00'),
(109, 11, '4f602323d7f484cf6e38d98f1b6c92202f3b29233c4f4c2d2f6a60cb76bc1b7a', '2026-08-27 10:33:00', '2026-08-20 03:33:00'),
(110, 11, '6c3e7a683f44597e344fd4e43961d19afd879deaa9b4a9bcdaf30418f3c8339a', '2026-08-27 10:33:00', '2026-08-20 03:33:00'),
(111, 11, '5f0e61772c7d14da65434cc13a6b4130416776b2ba4081169e4573d047b60ca2', '2026-08-27 10:33:00', '2026-08-20 03:33:00'),
(112, 11, 'aa3cdacc25655e3d0cda5128e7b4da4af7fd8e0947caa601cec9e20b574aed1d', '2026-08-27 10:33:01', '2026-08-20 03:33:01'),
(113, 11, '1498459a77b5ed8f646b1bbbc4b06768fd834bfaf2b305d6cf3bea1c46e49cd2', '2026-08-27 10:33:01', '2026-08-20 03:33:01'),
(114, 11, 'ed3ca10c7c6e0bd8e4aa1ad22aa8a59b06f8ca183ba84f07f5487a465bd7e1e9', '2026-08-27 10:33:02', '2026-08-20 03:33:02'),
(115, 11, '2b5e18bf46ae75175fcbcde20db49048a649e6600f3bd6e1b4a82697ab693df2', '2026-08-27 10:33:04', '2026-08-20 03:33:04'),
(116, 11, '71b354e1aa63a59d0167fb0678fe1eafb480b88bb6746eaaa701ecd0dca7d4b7', '2026-08-27 10:33:04', '2026-08-20 03:33:04'),
(117, 11, '15dc44ccaeee8bae2e37758e87991425ea481d3b88b90b7dc100e1534d040061', '2026-08-27 10:33:05', '2026-08-20 03:33:05'),
(118, 11, 'c30bdb488b48cee0ee795701dbf1d07e937567a46b9f6b4243b675c086ba6eaa', '2026-08-27 10:33:05', '2026-08-20 03:33:05'),
(119, 11, 'd5aaa1b5af3642dfd66fe689ad5f4f0f43d84c09233f4d9c996686053f232813', '2026-08-27 10:33:06', '2026-08-20 03:33:06'),
(120, 11, '452d92aa355a2e4e04ec7da4698907f8108810318973ca27483759ea2340e8e9', '2026-08-27 10:33:06', '2026-08-20 03:33:06'),
(121, 11, '6224452c7dc33a495499862a178f9131fd76c5a689bd304b64ba1ef6ef764c76', '2026-08-27 10:33:07', '2026-08-20 03:33:07'),
(122, 11, '1c9f547d87a0920f2f26cd0a6b1e214060a873ce1928415ed71fd097707c943c', '2026-08-27 10:33:07', '2026-08-20 03:33:07'),
(123, 11, '348d696503bb78d7afb9ec90c61222097b86ae348688effa0d1b96d6a30de774', '2026-08-27 10:33:08', '2026-08-20 03:33:08'),
(124, 11, 'dbf2b60174b36b9647f6a8406e3bc30ac13e6df5924618de4d1cb99ac858de07', '2026-08-27 10:33:10', '2026-08-20 03:33:10'),
(125, 11, 'caa591ef536e6ac31ab2348f1b126002396507ec9f2bcf1de6108e0855f44df4', '2026-08-27 10:33:10', '2026-08-20 03:33:10'),
(126, 11, '2d2f252e8740a5a5061e81f693b6cb4d6e62fecbd73dbe4a41dc4ea8fc66a0d8', '2026-08-27 10:33:10', '2026-08-20 03:33:10'),
(127, 11, 'b9d093c6b219dbaa5c2f9140147464c0ad45e1c503b69d5d4dcd5395ebcf8f51', '2026-08-27 10:33:11', '2026-08-20 03:33:11'),
(128, 11, 'adeecbefab2198565469bbd0c52ff39b08d5c027dc928d7c216127f3319d645c', '2026-08-27 10:33:11', '2026-08-20 03:33:11'),
(129, 19, 'bb5024106e85c07283ea189fd9d2e729fe97f2c2a306f993d76e6581116a9658', '2026-08-27 10:33:30', '2026-08-20 03:33:30'),
(130, 25, '9c8aafc3d3d654dbc6137beb328e79ccbff89a91b6559403a94e2f9e51288b65', '2026-08-27 10:33:31', '2026-08-20 03:33:31'),
(131, 17, '7ef1fae16c3995413762c277d954b366cbf7777156da47a1b7edc2d237e56aa1', '2026-08-27 10:33:36', '2026-08-20 03:33:36'),
(132, 26, '03cb3fd733dae53e4cfa4a8a92985312688b6cc5c85faaceeb3c461b08b5042b', '2026-08-27 10:33:45', '2026-08-20 03:33:45'),
(133, 26, '0976ddbb67e989a67fc09473a90239fd1905a936c9839f6ee1ccf87475168e5a', '2026-08-27 10:33:46', '2026-08-20 03:33:46'),
(134, 17, '180b977832ab015b9d9423199a6031d02ad1c4798f6c5c2cf1ffdf4cfaaf2c17', '2026-08-27 10:33:56', '2026-08-20 03:33:56'),
(135, 27, '96f3a0beb79e49c0b4253dcd3409e477b9f75d4daacdd6100f4b994f7739a98f', '2026-08-27 10:34:41', '2026-08-20 03:34:41'),
(136, 26, 'bd9b955cfe34c61f8c61b833f66ed5d8728e4d02715737c61fd428e76b241cdf', '2026-08-27 10:35:05', '2026-08-20 03:35:05'),
(137, 26, 'c524f6d58e5e6eab4ddb63d969012558ca2a4eb951ff491ac945d3ddd8a4c325', '2026-08-27 10:35:06', '2026-08-20 03:35:06'),
(138, 25, '19bf3bc1d8538e193d96c49c95c445c870381abbc69f481383ff2b5756060ae4', '2026-08-27 10:35:39', '2026-08-20 03:35:39'),
(139, 18, 'ff9199465cffc66c98b3e679cfe0d7118af4da1cfcd95affd4b58aecc98b0f25', '2026-08-27 10:35:46', '2026-08-20 03:35:46'),
(140, 18, '1fe68b121b1057e65f32cc4a37d9106afb7f82d526e564493c6234ea55d81484', '2026-08-27 10:35:47', '2026-08-20 03:35:47'),
(141, 28, 'f4a92cda2af11f7951a6cd61cc1dd2862e9267b1fd1371fb5783cdc7999d2136', '2026-08-27 10:36:20', '2026-08-20 03:36:20'),
(142, 28, '151d54edf0d3ccb82ec9389484bd5ca0db8f9e8e26938f953d4665d4f32094a2', '2026-08-27 10:36:22', '2026-08-20 03:36:22'),
(143, 28, 'de8b6f9fb073e4ae753c23eb7c9bfd01a953434acd5787aac70c090a0afe086b', '2026-08-27 10:36:22', '2026-08-20 03:36:22'),
(144, 29, 'e512e5dd17650c5f4f8639cf64ad94df0efd85a861daabd8051ad0766f45a54f', '2026-08-27 10:36:35', '2026-08-20 03:36:35'),
(145, 33, 'e71a1f559adc59ef8d0d48fe150e6ba3a9902ea013d67a240a9073aef8741774', '2026-08-27 10:37:11', '2026-08-20 03:37:11'),
(146, 32, '443b60b251265bfa9e5400c387d56c52bfe5636782f34fa723da87dfce28e2a4', '2026-08-27 10:37:15', '2026-08-20 03:37:15'),
(147, 26, '159d1a67efa5f70eb098737e0eb5c2022aa5d4870e2279773a56f9dc8932d087', '2026-08-27 10:37:17', '2026-08-20 03:37:17'),
(148, 25, '37717397275e771cd69884640903f8ac0bce6634cbee5cca01ac9dd9b3594fbe', '2026-08-27 10:37:30', '2026-08-20 03:37:30'),
(149, 34, 'bcf5597b7c35562d2c59ed4b222cdbe481b25b0278c7b8cab5f73cde9bef4454', '2026-08-27 10:37:37', '2026-08-20 03:37:37'),
(150, 30, '3e73944f725c00c168fad4aed321c9ca68d48356d73bce7d0a9b845185ffdeb2', '2026-08-27 10:37:38', '2026-08-20 03:37:38'),
(151, 31, '4693da6e37519c78d1de5c356683b9b51b1194de30f83dd96823cfdb220926be', '2026-08-27 10:37:38', '2026-08-20 03:37:38'),
(152, 35, '1255d8b70284dfe9d453f27e61d76ea31e565f6728c84c0e88354d363cc4de04', '2026-08-27 10:37:43', '2026-08-20 03:37:43'),
(153, 38, 'fca4f729b8f2367e840569cd60d2994b08fb6fe56a7c956d46ec0e359fa3c703', '2026-08-27 10:38:01', '2026-08-20 03:38:01'),
(154, 37, '5238effb7c7136ae04e98f73df2eb21da788dacd7d3ed348f2590e05c747fd1e', '2026-08-27 10:38:02', '2026-08-20 03:38:02'),
(155, 21, 'b450e34e90a31be0e993a0b7f7606ded74bfdaaeb9fdde9e335f5c93a621e39c', '2026-08-27 10:38:07', '2026-08-20 03:38:07'),
(156, 34, 'f9d100798b1dc2e020aaf4566bbdf5e565b2891c31fcbcf4d9d555aedef7f69a', '2026-08-27 10:38:20', '2026-08-20 03:38:20'),
(157, 39, 'f316c2d873af4384b9609374e2bbe1ee2e2968d439f0d56ddf4eda2e42d45134', '2026-08-27 10:38:21', '2026-08-20 03:38:21'),
(158, 40, 'e1b5d1078fc736674218f3bf9c9ff6de8689920c963fb32bc5da46e191a6f9e4', '2026-08-27 10:38:55', '2026-08-20 03:38:55'),
(159, 41, '56be041643c0d746bb85b8408392a49cf03dd6f61e74d14aaa7fb76a0aa771b8', '2026-08-27 10:39:50', '2026-08-20 03:39:50'),
(160, 42, 'dcc126634640a3fccec5242f0af2ac5e4370a552f0c9ab1d92028af981ac66e2', '2026-08-27 10:40:47', '2026-08-20 03:40:47'),
(161, 27, '429da6c45616c01221da49ac3271ab5b88303ab724d59b2a18f4cc29c8a82e87', '2026-08-27 10:42:37', '2026-08-20 03:42:37'),
(162, 40, 'afbd02c2d5c3f8ac2c2804374712a7afbe825aa9b81617d53ea34838d555b10d', '2026-08-27 10:43:05', '2026-08-20 03:43:05'),
(163, 3, 'e217010ab5e8ec51686def7f18352582e0c6392d0634748378acc4dff8b666d2', '2026-08-27 11:39:02', '2026-08-20 04:39:02'),
(164, 43, 'd137d3041146e1b93bf7d1a233b8f66634426ccbfe967b39bbca9bcd5b6760ef', '2026-11-25 18:25:18', '2026-11-18 11:25:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(50) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password_hash`, `created_at`) VALUES
(1, 'leon', '$2b$12$DPAMAyCqK8TdKt4hvXbC4OdzXCE7nWUvQHVMYZeCnd0u.oFuBEhce', '2026-08-19 17:57:50'),
(2, 'elmawa', '$2b$12$FdPMq6CwEfyY9.vfLrv.M.XXgiTFO4T5MT0UGlXuV0ZXxS9gtH57W', '2026-08-19 18:26:06'),
(3, 'doni', '$2b$12$XsStWl9NJTTcQdH3eomILeESGsauhRlqqgLyofoWO8mui9oj1j.q.', '2026-08-20 01:39:18'),
(4, 'Jehuda', '$2b$12$/0QOwrxmjYxrCP5kYYojpOnYl003mimbUV/b8xXc5SfUM7NmbqcyK', '2026-08-20 01:42:11'),
(5, 'sasaxch', '$2b$12$qLHmJVXr9da1ZWCEw0RkFeR/6rfhWAsDcd6ZNguvUjH2qOFzpiFsW', '2026-08-20 03:29:07'),
(6, 'Sayyid', '$2b$12$opVwKpYK3Mp5yGIJuLzzvuRu8vD6s3EieBJMBCQL1Ew/797CaNjJO', '2026-08-20 03:29:11'),
(7, 'iboldblade', '$2b$12$/9fAlavK9S68J985vx8qP.pafElzejdo0lIBMwYekeJpmalg6/wDK', '2026-08-20 03:29:32'),
(8, 'Annur Tawi Nugraha', '$2b$12$Hk/igiLnO01nm45MdwTNOecnSVbKjfkRtR5xwNb9SDyVvUeNOlRKe', '2026-08-20 03:29:51'),
(9, 'boy', '$2b$12$cVPTIsxLmawh25Aw/dINHuboIQegGxuW6VfaEjYqOerm.VQDrs0Mi', '2026-08-20 03:29:55'),
(10, 'RASYA', '$2b$12$AHBiz2Zy1ozDuc3nrdCoAu464ejNQ6IUOYxy5/7FB7cSOZb5d03Hy', '2026-08-20 03:29:57'),
(11, 'goku', '$2b$12$2PHAl0Lyb8VvMMDkIgpUN.JMa141rS5a.vkzOfwN2OEFAC/uk9A9a', '2026-08-20 03:30:01'),
(12, 'mantha', '$2b$12$NtUy5KX6.DhMd6IqfqxnguOEk.gS7Ude1Np9pQSDR2marVMAQG4oK', '2026-08-20 03:30:05'),
(13, 'Ryuchann', '$2b$12$Wxa9lKXj5g4vx4gE5Cx4VeHo19NxX5kLfjDOLAymUEVH0PF9n2.Ia', '2026-08-20 03:30:10'),
(14, 'ujang', '$2b$12$sH.BJ6sAYz9CymCzFALKPOkJeghEclQVyqf70Mp50uzMRj3UAyjTm', '2026-08-20 03:30:41'),
(15, 'Tung', '$2b$12$ZDzDDvQqVI60exNtM64RL.tqgMGeWZU/JXVZ30zTLN2ktgyKndtf.', '2026-08-20 03:30:47'),
(16, 'rizzkmdmn', '$2b$12$PcBKxqrjXhTBisLyci0D1uYtL7Q.ruPQRbXdFJpKLPFXVpxHOii2u', '2026-08-20 03:31:23'),
(17, 'Bryan SMAN 5 PLG', '$2b$12$b5IjnyJf0bRthalyvWQFJOAbctKLZQ5wBlnyKQcG9SAHxsjHHMqZa', '2026-08-20 03:31:27'),
(18, 'revinaa j.p', '$2b$12$tvHmbqARvpR1RdRtM88v9u0ktuFPAkLGNFmZv/4g9c7bMpSz6EjG.', '2026-08-20 03:31:29'),
(19, 'AriAprrr', '$2b$12$HBdzybw9TAouyCzOC.VMyu1I111qmQbhHf4b2aDKQul0377yjLYny', '2026-08-20 03:31:48'),
(20, 'Br1ght.stars', '$2b$12$Eg7V6Pn1J4tVrECtIuIJfOJRKtEwnwbgwjRH3HSKEAufuIWbRH/yq', '2026-08-20 03:32:09'),
(21, 'farhan', '$2b$12$/0oET64RVvmrIZte/RK0reaX.kMFWDwOyTMn7hZQhetKLIy.6tE52', '2026-08-20 03:32:12'),
(24, 'zizi', '$2b$12$gtek6ieMSQVV0ER31.3tv.S9IgELEpOAv6mXo6wAwzhv4ok6dHimG', '2026-08-20 03:32:18'),
(25, 'imam', '$2b$12$ClN1YzabXyJjYy58N7XtJuHKlnFcqKh2Q1/gz0x8NvxBXz3l81bj.', '2026-08-20 03:33:12'),
(26, 'bellinda', '$2b$12$Pt6XLlx4ZdFKzdprc0ohWOpQ77q2HQy0iRNNYCZzn/sHWQfOtC.wy', '2026-08-20 03:33:36'),
(27, 'NynayShifa', '$2b$12$jeH0sXXn00ACyW7tcC8m5u0vL/pp5UwOQVcA47DSv8JHq3HT5731S', '2026-08-20 03:34:26'),
(28, '~  faaa Ω', '$2b$12$cVsqhBOkUdRqu7SMIM/vwOdUZsSd4by2kVS/NmLR1BUR0xHSZRNRe', '2026-08-20 03:36:13'),
(29, 'zattan77', '$2b$12$3VjNA8fP1v1NxQairb7NJuYHEMQ86DVAgAG6VXN6uGAPCtDF0O6aG', '2026-08-20 03:36:23'),
(30, 'dom', '$2b$12$gVGkHCINs96FnbOzG8Tv9OBokQ9TSlCY8J4kDo8Bw1.FLbAuYAMN2', '2026-08-20 03:36:28'),
(31, 'pahytar', '$2b$12$Bm83wwfIwWvEtpUO7S98gOzd0kkwpTf5ri7zR9k1OFJX/G97.OBFC', '2026-08-20 03:36:40'),
(32, 'Ikuyo Kita', '$2b$12$baNRDrymr4dRRItvJe24BOxTVuVTcjis8VovG90kouiLzJB6dPHFi', '2026-08-20 03:36:52'),
(33, 'raditya yuda pratama', '$2b$12$G3piDttbj01obeR//NKR6Oea5kcR8DxEE0kvgSqJi0gBRBkUOg1xm', '2026-08-20 03:37:04'),
(34, 'Daanish', '$2b$12$cLxBRV7sWcyOshu3IKqJauuhrgHrFvlcNJ4/xmSS1bnEETBvkM4MC', '2026-08-20 03:37:17'),
(35, 'Fahriiy', '$2b$12$AefQjk4ui4pp7XHwuytDtOr6Z8hjfW./xtc9bT8YEku.dFGWILuDq', '2026-08-20 03:37:25'),
(37, 'Fahri', '$2b$12$f4c0SgHsMFs.USTMmUGJrOkpb222sIkrxfg6aBYmQl4b66lDwL5xe', '2026-08-20 03:37:44'),
(38, 'Admin', '$2b$12$TLz.oh0.B/9ZYMIparPAeedaUhYp1yb2LgoEsxZRcfcNV2I4qAjhe', '2026-08-20 03:37:45'),
(39, 'Lulu_gtw', '$2b$12$V75VsogiVGGPVttoQ7bChu6bbFZZdWRG/lWRdRdyyMhCAy3eK25n2', '2026-08-20 03:37:58'),
(40, 'alvin', '$2b$12$dnkOuNAHsqJdN3l9g8ircOfFqi0fIsNG14HTOw6uKgXa4q8rlIMQK', '2026-08-20 03:38:41'),
(41, 'deswitaimutt', '$2b$12$h4vWO0BbuBqteyKj7WzK7.2Rn1kO17KyzNoNCn2IquwOi6zCnFBhC', '2026-08-20 03:39:29'),
(42, 'Embun', '$2b$12$J1SRfm6TmmFw18Gy1PuN9OT9Bgp68Wq0MGudiaqr4PXYe/LyHx4nK', '2026-08-20 03:40:28'),
(43, 'reza', '$2b$12$/CY5jvKE/kulV0O7dxhzyemQnBSn3Vp3d3jEYNXVspgSvIo/bxUMq', '2026-11-18 11:25:06');

-- --------------------------------------------------------

--
-- Table structure for table `works`
--

CREATE TABLE `works` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `title` varchar(150) NOT NULL,
  `description` text NOT NULL,
  `game_url` varchar(500) NOT NULL,
  `play_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `major` enum('Teknik Informatika','Sistem Informasi','Kolaborasi') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `works`
--

INSERT INTO `works` (`id`, `created_by`, `title`, `description`, `game_url`, `play_count`, `major`, `created_at`, `updated_at`) VALUES
(1, 1, 'Space Shooter', 'Antarmuka gim Space Shooter merupakan sistem permainan tembak-menembak luar angkasa bergaya arcade-roguelite. Fitur-fiturnya mencakup menu utama dengan kejelasan batas aturan, layar Game Over untuk evaluasi statistik dan perolehan imbalan, toko (Shop) dengan variasi Pendant dan Weapon untuk mengustomisasi gaya bertarung menggunakan koin, serta Index Book sebagai panduan strategi untuk mempelajari karakteristik dan kelemahan musuh.', 'https://skyisblue324.github.io/Space-Shooter-Mobile/', 9, 'Teknik Informatika', '2026-08-19 18:01:39', '2026-08-20 03:39:30'),
(2, 1, 'Konsultasi Jurusan', 'Fitur Konsultasi Jurusan (Tes Minat: Sistem Informasi atau Teknik Informatika) adalah antarmuka kuesioner interaktif berbasis web yang dirancang untuk membantu calon mahasiswa menentukan pilihan jurusan yang sesuai antara Sistem Informasi dan Teknik Informatika. Sistem ini bekerja mulai dari penginputan nama pengguna, penyajian serangkaian pertanyaan pilihan ganda terkait preferensi minat teknis (seperti Web Programming vs. UX Design), hingga tombol navigasi terstruktur yang didukung rujukan akademis.', 'https://febriyantipanjaitan44-ctrl.github.io/NextMajor/', 2, 'Sistem Informasi', '2026-08-19 18:05:07', '2026-08-20 03:38:03'),
(3, 1, 'Car Driving', 'Game arcade bergaya top-down yang mengajak pemain mengendalikan mobil untuk menghindari truk-truk yang melaju di jalan, sambil mengumpulkan skor setinggi mungkin sebelum menabrak.', 'https://leonndu.github.io/kampus-game/leon/', 6, 'Teknik Informatika', '2026-08-19 18:08:30', '2026-08-20 03:37:24'),
(4, 1, 'HighSchool Romance', 'game dating simulation bergaya visual novel yang mengajak pemain merasakan pengalaman dekat dengan salah satu karakter anime pilihan di lingkungan sekolah.', 'https://leonndu.github.io/kampus-game-date/', 42, 'Sistem Informasi', '2026-08-19 18:11:07', '2026-08-20 05:22:46'),
(5, 1, 'Jump Jump', 'Game ini merupakan permainan parkour 2D yang mengharuskan pemain melewati berbagai rintangan dengan mengatur waktu lompatan. Pemain dapat meningkatkan skor, menyelesaikan level, dan menjaga nyawa agar dapat mencapai tujuan permainan.', 'https://leonndu.github.io/kampus-game/', 9, 'Teknik Informatika', '2026-08-19 18:15:07', '2026-08-20 03:38:46'),
(6, 1, 'Eksplorasi Kampus Satu University', 'Antarmuka \"Eksplorasi Kampus Satu University\" menyajikan platform informasi interaktif untuk tiga cabang kampus, yaitu Bandung, Pontianak, dan Palembang. Setiap cabang dilengkapi dengan detail lokasi, jam operasional, pilihan program studi, fasilitas penunjang seperti lab komputer modern, kelas kreatif, dan co-working space, serta dilengkapi dengan testimoni mahasiswa dan galeri foto fasilitas untuk memberikan gambaran lengkap mengenai lingkungan belajar di masing-masing lokasi.', 'https://leonndu.github.io/kampus-game/cihuy/', 0, 'Sistem Informasi', '2026-08-19 18:18:38', '2026-08-19 18:18:38'),
(7, 1, 'Food Ordering App', 'Antarmuka ini merupakan tampilan aplikasi pemesanan makanan (Food Ordering App) berbasis mobile dengan desain bergaya pastel yang sederhana. Aplikasi ini memungkinkan pengguna memilih kategori menu (Dessert atau Drink), melihat rincian produk seperti foto, rating, harga, dan bahan pembuatan (ingredients), serta mengatur jumlah porsi sebelum memasukkannya ke daftar pesanan (Order).', 'https://febriyantipanjaitan44-ctrl.github.io/Aplikasi_Dessert/', 4, 'Sistem Informasi', '2026-08-19 18:21:11', '2026-08-20 03:39:50'),
(8, 1, 'Klepon Loncat', 'Klepon Loncat Adventure – game platformer vertikal (mirip Doodle Jump) dengan karakter utama bola hijau bergaya \"klepon\" yang harus melompat setinggi mungkin sambil menghindari atau menembak musuh.', 'https://bitataa.github.io/klepon-loncat/', 8, 'Sistem Informasi', '2026-08-19 18:24:01', '2026-11-18 11:25:44'),
(9, 1, 'Rhythm Game', 'Gim musik berbasis ketukan ritme yang menguji ketepatan waktu dan refleks pemain dalam menekan tombol sesuai irama lagu yang dipilih.', 'https://doniandika2901-cmyk.github.io/Rhythm-Game/game/', 35, 'Sistem Informasi', '2026-08-20 01:44:34', '2026-08-20 05:24:40');

-- --------------------------------------------------------

--
-- Table structure for table `work_comments`
--

CREATE TABLE `work_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `work_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `comment_text` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `work_comments`
--

INSERT INTO `work_comments` (`id`, `work_id`, `user_id`, `comment_text`, `created_at`) VALUES
(1, 3, 1, 'game nya seru', '2026-08-20 01:45:28'),
(2, 3, 1, 'game nya seru', '2026-08-20 01:45:28'),
(3, 8, 4, 'game nya bagus', '2026-08-20 02:58:57'),
(4, 9, 12, 'keyennnnnn', '2026-08-20 03:30:31'),
(5, 1, 7, 'mungkin lebih leluasa klo penembak ny bs bergerak kmn aja gt, ga cm dibawa doang', '2026-08-20 03:31:38'),
(6, 1, 7, 'mungkin lebih leluasa klo penembak ny bs bergerak kmn aja gt, ga cm dibawa doang', '2026-08-20 03:31:38'),
(7, 1, 7, 'mungkin lebih leluasa klo penembak ny bs bergerak kmn aja gt, ga cm dibawa doang', '2026-08-20 03:31:40'),
(8, 9, 7, 'wow', '2026-08-20 03:35:42');

-- --------------------------------------------------------

--
-- Table structure for table `work_creators`
--

CREATE TABLE `work_creators` (
  `id` int(10) UNSIGNED NOT NULL,
  `work_id` int(10) UNSIGNED NOT NULL,
  `creator_name` varchar(150) NOT NULL,
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `work_creators`
--

INSERT INTO `work_creators` (`id`, `work_id`, `creator_name`, `sort_order`) VALUES
(1, 1, 'Frederick', 1),
(2, 1, 'Ariq', 2),
(3, 2, 'leon', 1),
(4, 3, 'Leon', 1),
(5, 4, 'doni', 1),
(6, 5, 'reza', 1),
(7, 6, 'bita', 1),
(8, 7, 'siti', 1),
(9, 8, 'bila', 1),
(10, 9, 'doni', 1);

-- --------------------------------------------------------

--
-- Table structure for table `work_guides`
--

CREATE TABLE `work_guides` (
  `id` int(10) UNSIGNED NOT NULL,
  `work_id` int(10) UNSIGNED NOT NULL,
  `step_number` int(10) UNSIGNED NOT NULL,
  `instruction` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `work_guides`
--

INSERT INTO `work_guides` (`id`, `work_id`, `step_number`, `instruction`) VALUES
(1, 1, 1, 'Buka gim Space Shooter'),
(2, 1, 2, 'Klik \"Play\" & halau alien'),
(3, 1, 3, 'Kumpulkan koin'),
(4, 1, 4, 'Beli senjata/pendant di Toko (Shop)'),
(5, 2, 1, 'Buka fitur Konsultasi Jurusan'),
(6, 2, 2, 'Isi nama & klik \"Mulai\"'),
(7, 2, 3, 'Jawab tes minat'),
(8, 2, 4, 'Lihat rekomendasi jurusan'),
(9, 3, 1, 'Masukkan nama pemain'),
(10, 3, 2, 'Masukkan nama pemain'),
(11, 3, 3, 'Pilih \"Lihat Leaderboard\" untuk melihat skor pemain lain'),
(12, 3, 4, 'Gunakan tombol ◀️ ▶️ (kiri/kanan) untuk berpindah jalur'),
(13, 3, 5, 'Gunakan tombol ◀️ ▶️ (kiri/kanan) untuk berpindah jalur'),
(14, 3, 6, 'Perhatikan Score, Best, & Level di bagian atas layar'),
(15, 3, 7, 'Bertahan selama mungkin tanpa menabrak truk untuk mengumpulkan skor setinggi mungkin'),
(16, 3, 8, '8. Saat Game Over, tekan Tap Layar / Klik Dimana Saja untuk bermain lagi'),
(17, 4, 1, 'Masukkan nama pemain'),
(18, 4, 2, 'Klik *\"Mulai Cerita\"* untuk memulai permainan'),
(19, 4, 3, 'Pilih salah satu dari 3 karakter: *Rina, Yuki, atau Miku*'),
(20, 4, 4, 'Pilih jawaban yang tersedia di setiap scene'),
(21, 4, 5, 'Kumpulkan *Relationship Points* selama 20 scene'),
(22, 4, 6, 'Dapatkan ending berdasarkan jumlah poin dan pilihanmu'),
(23, 4, 7, '7. Raih *Good Ending, Friendzone Ending,* atau *Secret Ending*'),
(24, 5, 1, 'Masukkan nama pemain'),
(25, 5, 2, 'Klik *\"Mulai Bermain\"*'),
(26, 5, 3, 'Pilih *\"Lihat Leaderboard\"* untuk melihat skor pemain lain'),
(27, 5, 4, 'Tekan *Space* atau *PgUp* untuk melompat'),
(28, 5, 5, 'Gunakan lompatan untuk melewati rintangan dan berpindah platform'),
(29, 5, 6, 'Perhatikan *Skor, Level, & Nyawa* di bagian atas layar'),
(30, 5, 7, 'Bertahan selama mungkin hingga nyawa habis'),
(31, 5, 8, 'Saat *Game Over*, pilih untuk bermain lagi atau kembali ke menu utama'),
(32, 6, 1, 'Buka website'),
(33, 6, 2, 'Pilih cabang kampus'),
(34, 6, 3, 'Klik \"Klik untuk detail lengkap\"'),
(35, 6, 4, '4. Lihat detail lokasi, fasilitas, & galeri'),
(36, 7, 1, 'Buka aplikasi Pemesanan Makanan'),
(37, 7, 2, 'Pilih kategori (Dessert/Drink)'),
(38, 7, 3, 'Cek harga & bahan'),
(39, 7, 4, 'Atur porsi (+/-) & klik \"Add to Order\"'),
(40, 8, 1, 'klik tap to start untuk memulai game'),
(41, 8, 2, 'Mengendalikan karakter untuk melompati platform demi platform ke atas.'),
(42, 8, 3, 'Bisa menembak musuh dengan Space (di laptop) atau tombol SHOOT (di layar sentuh).'),
(43, 8, 4, 'Bergerak kiri/kanan dengan tombol panah atau tombol arah di layar'),
(44, 9, 1, 'Buka aplikasi gim Rhythm Game'),
(45, 9, 2, 'Isi Username dan Password (opsional), lalu klik \"MASUK & MULAI MAIN\"'),
(46, 9, 3, 'Pilih lagu (track) yang ingin dimainkan, lalu klik \"MULAI MAIN\"'),
(47, 9, 4, 'Tekan tombol papan ketik (*D, **F, **J, **K) secara tepat saat *note jatuh menyentuh garis batas untuk mengumpulkan skor dan combo');

-- --------------------------------------------------------

--
-- Table structure for table `work_images`
--

CREATE TABLE `work_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `work_id` int(10) UNSIGNED NOT NULL,
  `image_path` varchar(500) NOT NULL,
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `work_images`
--

INSERT INTO `work_images` (`id`, `work_id`, `image_path`, `sort_order`, `created_at`) VALUES
(1, 1, '/uploads/6e8e7479-0f21-4ee8-8dd2-357b84f89ca2.jpg', 1, '2026-08-19 18:01:39'),
(2, 1, '/uploads/0c054c65-6a36-4430-bab1-4719f3ffedce.jpg', 2, '2026-08-19 18:01:39'),
(3, 1, '/uploads/a8f3952d-748c-4a98-8a0d-c6c608eace08.jpg', 3, '2026-08-19 18:01:39'),
(4, 1, '/uploads/f0310704-1cdb-409c-b4d5-16d4448bb9f2.jpg', 4, '2026-08-19 18:01:39'),
(5, 2, '/uploads/1d1918cc-1c2c-4145-a7a6-2dfe918e9960.jpg', 1, '2026-08-19 18:05:07'),
(6, 2, '/uploads/c6037130-a5a7-476f-a81e-da0ec1750ba6.jpg', 2, '2026-08-19 18:05:07'),
(7, 3, '/uploads/1555ac01-bdee-4b34-a29b-6c6648ee2bf7.jpg', 1, '2026-08-19 18:08:30'),
(8, 3, '/uploads/276cf2f4-f0fb-4c7e-8b07-0b5532a99e1a.jpg', 2, '2026-08-19 18:08:30'),
(9, 3, '/uploads/5ea12cd5-959f-407b-b46a-0e656f365f5d.jpg', 3, '2026-08-19 18:08:30'),
(10, 4, '/uploads/5d4987ec-566e-46f7-8ad0-acbd26f5af83.jpg', 1, '2026-08-19 18:11:07'),
(11, 4, '/uploads/e021019a-7299-47a2-ba42-b3e2b49d6d40.jpg', 2, '2026-08-19 18:11:07'),
(12, 4, '/uploads/a4d20c10-15ae-407e-931b-1782437560ea.jpg', 3, '2026-08-19 18:11:07'),
(13, 4, '/uploads/9d169939-34dc-42e1-95cc-ed9ae0c48d03.jpg', 4, '2026-08-19 18:11:07'),
(14, 5, '/uploads/42c1a11c-fa40-4294-8fc1-0d63946d52c6.jpg', 1, '2026-08-19 18:15:07'),
(15, 5, '/uploads/d8db65ba-7594-462d-82c9-d5e2a0838698.jpg', 2, '2026-08-19 18:15:07'),
(16, 5, '/uploads/aa542ff4-f073-498e-bb30-6f98a8468b2f.jpg', 3, '2026-08-19 18:15:07'),
(17, 6, '/uploads/e87ed245-60b8-4161-9fdb-d6f2fc239084.jpg', 1, '2026-08-19 18:18:38'),
(18, 6, '/uploads/3f4497f2-be83-4eeb-b096-ce225157b93f.jpg', 2, '2026-08-19 18:18:38'),
(19, 7, '/uploads/112628f0-e7e9-4a60-83f9-15bdc908548e.jpg', 1, '2026-08-19 18:21:11'),
(20, 7, '/uploads/8ef4cacd-89d4-4f94-be77-7186d22e2192.jpg', 2, '2026-08-19 18:21:11'),
(21, 8, '/uploads/08ae1731-deb1-439c-8469-970ae3a0d16c.jpg', 1, '2026-08-19 18:24:01'),
(22, 8, '/uploads/c7d37b6d-f7cb-42e2-b5ab-d64c72cae28d.jpg', 2, '2026-08-19 18:24:01'),
(23, 8, '/uploads/04554c01-5cb0-4eef-bb22-421872060aa1.jpg', 3, '2026-08-19 18:24:01'),
(24, 9, '/uploads/d4331a24-386e-4cb6-b3d8-ffad0da7902e.jpg', 1, '2026-08-20 01:44:34'),
(25, 9, '/uploads/580af106-87fb-4e9a-9a39-7d5c2838324d.jpg', 2, '2026-08-20 01:44:34'),
(26, 9, '/uploads/4caf97f9-29a9-49df-a53d-115c22112652.jpg', 3, '2026-08-20 01:44:34');

-- --------------------------------------------------------

--
-- Table structure for table `work_likes`
--

CREATE TABLE `work_likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `work_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `work_likes`
--

INSERT INTO `work_likes` (`id`, `work_id`, `user_id`, `created_at`) VALUES
(1, 1, 1, '2026-08-19 18:02:04'),
(2, 8, 1, '2026-08-19 18:25:34'),
(3, 8, 2, '2026-08-20 01:33:18'),
(4, 3, 1, '2026-08-20 01:45:23'),
(7, 9, 4, '2026-08-20 02:57:48'),
(8, 8, 4, '2026-08-20 02:58:29'),
(9, 9, 12, '2026-08-20 03:30:26'),
(11, 1, 7, '2026-08-20 03:33:38'),
(12, 9, 7, '2026-08-20 03:35:37'),
(13, 9, 43, '2026-11-18 11:25:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `fk_sessions_user` (`user_id`),
  ADD KEY `idx_sessions_token` (`token`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `works`
--
ALTER TABLE `works`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_works_created_by` (`created_by`),
  ADD KEY `idx_works_title` (`title`);

--
-- Indexes for table `work_comments`
--
ALTER TABLE `work_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_work_comments_user` (`user_id`),
  ADD KEY `idx_work_comments_work` (`work_id`,`created_at`);

--
-- Indexes for table `work_creators`
--
ALTER TABLE `work_creators`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_work_creators_work` (`work_id`,`sort_order`);

--
-- Indexes for table `work_guides`
--
ALTER TABLE `work_guides`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_work_guide_step` (`work_id`,`step_number`);

--
-- Indexes for table `work_images`
--
ALTER TABLE `work_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_work_images_work` (`work_id`,`sort_order`);

--
-- Indexes for table `work_likes`
--
ALTER TABLE `work_likes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_work_like_user` (`work_id`,`user_id`),
  ADD KEY `fk_work_likes_user` (`user_id`),
  ADD KEY `idx_work_likes_work` (`work_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `works`
--
ALTER TABLE `works`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `work_comments`
--
ALTER TABLE `work_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `work_creators`
--
ALTER TABLE `work_creators`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `work_guides`
--
ALTER TABLE `work_guides`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `work_images`
--
ALTER TABLE `work_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `work_likes`
--
ALTER TABLE `work_likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sessions`
--
ALTER TABLE `sessions`
  ADD CONSTRAINT `fk_sessions_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `works`
--
ALTER TABLE `works`
  ADD CONSTRAINT `fk_works_user` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `work_comments`
--
ALTER TABLE `work_comments`
  ADD CONSTRAINT `fk_work_comments_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_work_comments_work` FOREIGN KEY (`work_id`) REFERENCES `works` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `work_creators`
--
ALTER TABLE `work_creators`
  ADD CONSTRAINT `fk_work_creators_work` FOREIGN KEY (`work_id`) REFERENCES `works` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `work_guides`
--
ALTER TABLE `work_guides`
  ADD CONSTRAINT `fk_work_guides_work` FOREIGN KEY (`work_id`) REFERENCES `works` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `work_images`
--
ALTER TABLE `work_images`
  ADD CONSTRAINT `fk_work_images_work` FOREIGN KEY (`work_id`) REFERENCES `works` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `work_likes`
--
ALTER TABLE `work_likes`
  ADD CONSTRAINT `fk_work_likes_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_work_likes_work` FOREIGN KEY (`work_id`) REFERENCES `works` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
