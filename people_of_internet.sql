-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Июл 29 2016 г., 18:32
-- Версия сервера: 10.1.10-MariaDB
-- Версия PHP: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `people_of_internet`
--

-- --------------------------------------------------------

--
-- Структура таблицы `history`
--

CREATE TABLE `history` (
  `voter` varchar(16) NOT NULL,
  `recip` varchar(16) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `vote` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `history`
--

INSERT INTO `history` (`voter`, `recip`, `date`, `vote`) VALUES
('bredfrom', 'haha', '0000-00-00 00:00:00', 0),
('bredfrom', 'haha', '0000-00-00 00:00:00', 0),
('bredfrom', 'haha', '2016-07-29 10:48:46', 0),
('haha', 'check', '2016-07-29 11:02:01', 0),
('haha', 'check', '2016-07-29 11:02:13', 1),
('haha', 'check', '2016-07-29 11:02:16', 0),
('haha', 'check', '2016-07-29 11:02:19', 1),
('haha', 'bredfrom', '2016-07-29 11:02:23', 1),
('haha', 'bredlalala', '2016-07-29 11:02:28', 1),
('haha', 'Drekthar', '2016-07-29 11:02:33', 0),
('bredfrom', 'haha', '2016-07-29 11:14:38', 0),
('bredfrom', 'haha', '2016-07-29 11:14:41', 1),
('haha', 'check', '2016-07-29 11:25:49', 0),
('haha', 'check', '2016-07-29 11:51:45', 1),
('haha', 'check', '2016-07-29 12:04:08', 0),
('haha', 'check', '2016-07-29 12:27:11', 1),
('haha', 'check', '2016-07-29 12:28:33', 0),
('haha', 'check', '2016-07-29 12:28:36', 1),
('haha', 'check', '2016-07-29 12:28:39', 0),
('haha', 'bredfrom', '2016-07-29 12:28:43', 0),
('haha', 'check', '2016-07-29 12:30:53', 1),
('haha', 'check', '2016-07-29 12:31:33', 0),
('haha', 'check', '2016-07-29 12:31:45', 1),
('haha', 'check', '2016-07-29 12:32:27', 0),
('haha', 'check', '2016-07-29 12:34:16', 1),
('haha', 'check', '2016-07-29 12:34:32', 0),
('haha', 'check', '2016-07-29 12:36:14', 1),
('haha', 'check', '2016-07-29 12:48:10', 0),
('haha', 'check', '2016-07-29 13:09:28', 1),
('haha', 'check', '2016-07-29 13:10:29', 0),
('haha', 'check', '2016-07-29 13:10:33', 1),
('haha', 'bredlalala', '2016-07-29 13:10:38', 0),
('haha', 'check', '2016-07-29 13:14:55', 0),
('haha', 'check', '2016-07-29 13:15:02', 1),
('haha', 'check', '2016-07-29 13:15:56', 0),
('haha', 'check', '2016-07-29 13:17:01', 1),
('haha', 'check', '2016-07-29 13:17:21', 0),
('haha', 'check', '2016-07-29 13:17:32', 1),
('haha', 'check', '2016-07-29 13:17:55', 0),
('haha', 'check', '2016-07-29 13:18:31', 1),
('haha', 'check', '2016-07-29 13:19:49', 0),
('haha', 'check', '2016-07-29 13:55:35', 1),
('haha', 'check', '2016-07-29 13:55:47', 0),
('haha', 'check', '2016-07-29 13:56:01', 1),
('haha', 'check', '2016-07-29 13:56:09', 0),
('haha', 'check', '2016-07-29 13:56:36', 1),
('haha', 'check', '2016-07-29 13:56:59', 0),
('haha', 'check', '2016-07-29 13:57:20', 1),
('haha', 'check', '2016-07-29 13:57:23', 0),
('haha', 'check', '2016-07-29 13:57:39', 1),
('haha', 'check', '2016-07-29 13:57:46', 0),
('haha', 'check', '2016-07-29 13:58:22', 1),
('haha', 'check', '2016-07-29 13:59:02', 0),
('haha', 'check', '2016-07-29 13:59:37', 1),
('haha', 'check', '2016-07-29 13:59:43', 0),
('haha', 'check', '2016-07-29 14:01:02', 1),
('haha', 'check', '2016-07-29 14:01:06', 0),
('haha', 'check', '2016-07-29 14:01:09', 1),
('haha', 'check', '2016-07-29 14:01:13', 0),
('haha', 'check', '2016-07-29 14:01:17', 1),
('haha', 'check', '2016-07-29 14:01:21', 0),
('haha', 'check', '2016-07-29 14:01:25', 1),
('haha', 'check', '2016-07-29 14:01:28', 0),
('haha', 'bredfrom', '2016-07-29 14:01:43', 1),
('haha', 'someone', '2016-07-29 14:01:49', 1),
('haha', 'Petr', '2016-07-29 14:01:54', 1),
('haha', 'check', '2016-07-29 14:01:58', 1),
('haha', 'check', '2016-07-29 14:02:36', 0),
('haha', 'check', '2016-07-29 14:12:16', 1),
('haha', 'check', '2016-07-29 14:12:32', 0),
('haha', 'check', '2016-07-29 14:12:37', 1),
('haha', 'check', '2016-07-29 14:13:58', 0),
('haha', 'check', '2016-07-29 14:14:02', 1),
('haha', 'check', '2016-07-29 14:14:05', 0),
('haha', 'check', '2016-07-29 14:14:17', 1),
('haha', 'check', '2016-07-29 14:14:21', 0),
('haha', 'bredfrom', '2016-07-29 14:49:56', 0),
('haha', 'check', '2016-07-29 14:56:44', 1),
('haha', 'check', '2016-07-29 14:58:26', 0),
('haha', 'check', '2016-07-29 15:04:31', 1),
('bredfrom', 'haha', '2016-07-29 15:14:00', 0),
('bredfrom', 'kkkk', '2016-07-29 15:15:03', 1),
('bredfrom', 'haha', '2016-07-29 15:15:07', 1),
('bredfrom', 'check', '2016-07-29 15:24:04', 0),
('bredfrom', 'haha', '2016-07-29 15:24:07', 0),
('bredfrom', 'bredon', '2016-07-29 15:24:17', 1),
('bredfrom', 'check', '2016-07-29 15:26:33', 1),
('haha', 'check', '2016-07-29 15:41:18', 0),
('haha', 'soma', '2016-07-29 15:43:19', 0),
('ssss', 'check', '2016-07-29 15:53:41', 1),
('ssss', 'bredfrom', '2016-07-29 15:53:55', 1),
('ssss', 'kkkk', '2016-07-29 15:54:49', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `profiles`
--

CREATE TABLE `profiles` (
  `name` varchar(16) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `profiles`
--

INSERT INTO `profiles` (`name`, `text`) VALUES
('bredfrom', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc non hendrerit orci. Praesent sed lectus ultricies, commodo augue non, elementum ex. Aenean interdum lacus et elit feugiat aliquam. Suspendisse potenti. Morbi auctor nec ex ac gravida. Aliquam at mi lacus. Praesent placerat feugiat lobortis. Sed pellentesque, metus in ullamcorper placerat, nisl tortor tincidunt tellus, eget gravida nunc arcu ut lectus. Nunc laoreet, est nec auctor porta, ex ex bibendum ex, nec aliquet diam ante eu ipsum. Aliquam sed consequat mauris. Nullam convallis nec nisl non ultricies. Etiam consequat volutpat fermentum. Phasellus lacinia pretium gravida. Sed fermentum ornare libero et maximus. Pellentesque elementum tellus ut ornare fermentum. Nulla rutrum est id gravida finibus.\r\n\r\nDuis consectetur lectus sed arcu lacinia mattis. Nam arcu libero, dapibus nec euismod a, dictum a diam. Maecenas mi orci, venenatis in vulputate sed, facilisis et sem. Cras erat tortor, pulvinar quis justo convallis, sodales dictum lacus. Aliquam id pulvinar libero, in ultrices eros. Aliquam varius urna diam, fringilla condimentum diam pharetra ut. Phasellus lacinia ex dui, hendrerit placerat est semper et. Morbi tincidunt consectetur lacus id pulvinar. Etiam velit nunc, aliquet a sem nec, venenatis tempor quam. Vestibulum consectetur volutpat magna, non pulvinar tellus luctus quis. Sed blandit odio eget orci varius, at lacinia mi aliquam. Phasellus vel rutrum augue. Nulla id purus vitae arcu interdum vulputate vel in nunc. Curabitur nisi felis, luctus eu sapien id, pretium lacinia erat. Phasellus quis erat cursus arcu tincidunt pellentesque. Integer venenatis dolor ac pretium fermentum.\r\n\r\nNulla est eros, varius non quam vitae, volutpat sodales urna. Etiam rutrum at nisl eu egestas. Phasellus convallis sapien quis lacus rhoncus mattis. Nulla felis velit, maximus in lobortis non, varius eget justo. Mauris sed dolor nibh. Donec iaculis justo ut convallis feugiat. In a metus id velit ultricies tincidunt ac et neque. Phasellus congue, nulla gravida laoreet condimentum, magna dui dignissim leo, eu blandit ipsum diam pellentesque tellus. Pellentesque pharetra dui non risus facilisis, quis congue lacus feugiat.\r\n\r\nInteger nec leo in orci faucibus aliquet id a erat. Donec ullamcorper tincidunt justo vel rutrum. In id blandit elit. Aliquam tincidunt accumsan mi. Morbi id turpis dapibus, pellentesque justo ac, pharetra nulla. Nulla suscipit, enim eget pharetra volutpat, lectus tortor luctus dolor, a condimentum nibh massa non tellus. Pellentesque turpis quam, consequat eget risus quis, feugiat luctus magna. Aenean rutrum mollis eros, a sagittis nulla finibus eu. Aliquam ac sagittis orci, ut mollis ex. Phasellus ac lobortis magna. Quisque nec felis a nibh laoreet tempus ut vel erat. Sed scelerisque nisi a blandit feugiat. Curabitur congue elit et elit pretium bibendum. Sed consequat nisl vel arcu convallis luctus. Mauris eu ex dignissim, fermentum eros et, porta libero.\r\n\r\nDonec pellentesque felis laoreet sapien volutpat, a euismod eros tincidunt. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In aliquam consectetur nisl tincidunt gravida. Donec eleifend arcu quis massa aliquam scelerisque. Interdum et malesuada fames ac ante ipsum primis in faucibus. Cras quis auctor nisl. Fusce mollis, massa nec viverra scelerisque, est est fringilla elit, ut facilisis orci urna quis tellus. Suspendisse vulputate placerat dui vitae vestibulum. Sed tempus tempus sem. Nam semper fermentum ante, nec laoreet tellus blandit non. Donec malesuada, ligula suscipit eleifend tristique, tellus elit malesuada tortor, sed pulvinar ipsum augue id quam. Ut accumsan rhoncus malesuada. Cras eu efficitur tortor.\r\n\r\nVivamus dictum purus at nisi laoreet, quis feugiat lectus ultrices. Pellentesque sodales, tellus et malesuada placerat, mauris ante sagittis ex, vel consequat libero ipsum vel elit. Fusce in libero sit amet dui congue fringilla. Duis tortor nisi, scelerisque sit amet ultricies vel, euismod facilisis magna. Vestibulum tristique ut metus eu placerat. Donec a mauris tristique, pharetra lorem ut, finibus turpis. Vestibulum at vulputate ex, sit amet luctus lacus. Duis lorem arcu, posuere quis nisl ac, sagittis consectetur elit. Donec dictum tempor sem, tempus dapibus odio luctus sed.\r\n\r\nMauris pellentesque tortor est, non tempus nulla cursus sed. Aenean rutrum ante vitae mi hendrerit, non hendrerit felis egestas. Pellentesque lacinia mattis massa, nec maximus leo porttitor varius. Vestibulum venenatis sem pulvinar, dictum odio non, sagittis magna. Vestibulum sed arcu ultricies, accumsan sem ut, porta sapien. Maecenas aliquet lacus ac dui suscipit gravida. Cras id tristique leo. Nulla ullamcorper eget tellus non placerat. In sed arcu fermentum, venenatis enim eu, elementum nisi.\r\n\r\nVestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis quis molestie urna. Fusce porttitor faucibus finibus. Nulla bibendum iaculis diam, in auctor tortor viverra ac. Phasellus consequat nibh a sem commodo, eget commodo augue mollis. Aenean eget est imperdiet metus consequat euismod at nec velit. Cras dictum nisi justo, id scelerisque lorem interdum nec. Vivamus sodales vel purus vel scelerisque. Quisque euismod eros et nisl scelerisque, ut pellentesque orci fringilla. Proin a sem ut quam hendrerit malesuada. Duis nibh felis, tristique vitae sapien a, consequat fermentum odio. Donec consectetur sodales lorem, in consectetur justo congue sodales.\r\n\r\nProin gravida commodo lorem, in fermentum magna consequat et. Fusce nec eleifend ligula. Donec suscipit porttitor est nec malesuada. Ut turpis ante, tincidunt nec imperdiet eu, tincidunt sed est. Proin maximus magna ligula, vel luctus ligula porttitor finibus. Maecenas lacinia vel odio sit amet vestibulum. Nunc id ornare magna. Praesent vel interdum leo. Vestibulum hendrerit scelerisque tellus a rutrum. Proin eget nisl quis metus sollicitudin ultricies. Vestibulum nulla elit, rhoncus a scelerisque vel, porttitor vitae nibh.\r\n\r\nCurabitur dignissim odio id ultrices aliquet. Praesent facilisis nulla quis enim fermentum consequat. Mauris in egestas sem. Fusce sit amet elit commodo, maximus metus ultricies, fringilla est. Etiam et nibh id orci vestibulum feugiat quis eu magna. Nam id congue augue. Pellentesque fermentum est ut sem dignissim tempus. Donec mauris orci, elementum vitae erat ut, tempor accumsan ante.\r\n\r\nSed luctus quam risus, at varius elit bibendum sed. Ut a interdum sapien. Donec a accumsan erat. Aliquam erat volutpat. Suspendisse arcu leo, bibendum a ante eu, ultricies placerat ipsum. Etiam auctor, justo at porta blandit, lectus turpis varius turpis, at condimentum erat turpis et ipsum. Nunc eget urna vulputate, aliquam neque semper, varius neque. Nulla ullamcorper lectus turpis, et pharetra nulla cursus vel. Curabitur quis porta eros. Donec eu elementum augue, dictum rutrum ex.\r\n\r\nUt malesuada, lorem id congue dignissim, sapien felis dictum dui, sed rutrum orci turpis eu dolor. Duis non augue erat. Quisque justo quam, congue ut arcu at, rhoncus suscipit mauris. Sed sed libero vestibulum, imperdiet enim id, finibus sapien. Vivamus cursus, tellus et tempus pulvinar, dolor dui scelerisque lacus, et egestas nisl est vel erat. Phasellus vitae massa lorem. Ut convallis eleifend purus nec euismod. Sed id nibh tortor. Nullam aliquet metus quis nisi ultricies aliquam. Sed auctor fringilla augue egestas mollis. Curabitur fermentum urna ante, rutrum hendrerit nibh gravida in. Nunc metus dui, malesuada nec congue in, laoreet ac diam. Mauris facilisis, velit nec viverra convallis, neque lacus varius leo, ut cursus urna nisl vitae mauris. In hac habitasse platea dictumst. Maecenas ullamcorper, tortor eu vehicula pellentesque, nisi diam suscipit libero, id eleifend risus risus vel ipsum.\r\n\r\nEtiam sagittis nulla metus, non dignissim leo consequat in. Quisque a mauris at sem ultrices facilisis in sed lacus. Etiam facilisis lorem in ipsum porta porttitor. Pellentesque laoreet lacus mi, et ultrices sapien pharetra non. Sed ac turpis sit amet diam viverra condimentum. Vivamus quis scelerisque nibh. Fusce commodo tortor at leo tempor, vel sagittis ex lobortis. Duis id hendrerit odio. Proin a malesuada sem, quis consectetur nibh. Cras nec ornare diam. Sed consequat, ipsum in suscipit tempor, libero arcu tincidunt tortor, a accumsan risus nisi sit amet nibh. Praesent dapibus congue tellus ut eleifend.\r\n\r\nNunc eu molestie magna, vitae laoreet libero. Sed pretium iaculis sapien non aliquam. Aliquam aliquam nisi convallis eleifend faucibus. Phasellus auctor, elit ut efficitur tempus, nisi leo imperdiet justo, at scelerisque erat nisl in velit. Sed vitae venenatis sem. Suspendisse potenti. Nulla scelerisque lacus sit amet urna venenatis lacinia. Sed nec pretium urna. Integer suscipit odio quis neque porttitor interdum. Nulla rhoncus neque sit amet odio vulputate, in placerat nibh viverra. Maecenas euismod leo eu dignissim fermentum. Phasellus nec rutrum felis. Mauris dignissim rhoncus porta. Aliquam erat volutpat.\r\n\r\nVestibulum dapibus leo ut felis porta blandit. Quisque sodales eros eros, non sagittis velit sagittis quis. Morbi ornare, nisi ac euismod consequat, velit metus blandit velit, eu dictum mi magna at dolor. Aliquam erat volutpat. Nullam vehicula nunc eget tristique iaculis. Integer convallis tincidunt leo, vel viverra nisl semper at. Fusce sed congue leo. Aliquam aliquet sapien mi, eu dictum libero hendrerit quis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nullam gravida risus vel ex luctus condimentum. Aliquam non placerat ante. Duis tempus arcu non vulputate viverra. Nulla dictum dictum sapien, vitae feugiat nisl consequat id. Cras vestibulum sapien vel laoreet hendrerit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Quisque nec blandit elit.\r\n\r\nDuis non urna in sapien mattis eleifend. Ut interdum quam sapien, id placerat orci feugiat nec. Nam lacinia vel nibh ac vehicula. Nam ligula nisi, suscipit id iaculis quis, pellentesque id orci. Praesent tempus ac nisi sit amet iaculis. Nunc elementum posuere diam, eu molestie ipsum porttitor quis. Nullam quis tempor risus.\r\n\r\nNunc ornare velit ac volutpat sollicitudin. Nam magna nisl, iaculis vel diam tempus, gravida condimentum elit. Ut finibus lectus a nulla hendrerit convallis. Proin id viverra purus, id auctor purus. Aliquam in ultrices risus. Sed porta velit nec efficitur elementum. Maecenas eu sollicitudin tortor, ac pellentesque erat. In tincidunt vitae arcu nec scelerisque. Integer volutpat mi eget purus pellentesque suscipit. Suspendisse viverra elit nisl, nec euismod urna viverra vitae. Aliquam sit amet magna hendrerit, sollicitudin magna in, tristique enim.\r\n\r\nUt non erat vitae elit pulvinar vestibulum vitae et nisl. Cras laoreet tincidunt ligula, eu cursus magna sollicitudin vitae. Vivamus feugiat vestibulum condimentum. Integer vitae semper ante. Nam mollis, tortor at imperdiet dignissim, felis leo feugiat est, sit amet mattis leo ligula et ligula. Vestibulum suscipit interdum elit. Praesent sem elit, porta ut libero nec, ultricies fermentum ligula. Nunc nisl eros, mattis eget lobortis id, viverra quis odio. Donec vel est eu augue hendrerit consectetur quis eget sapien. Donec pretium, dolor sit amet vulputate tincidunt, velit lectus maximus felis, a laoreet massa lacus eget turpis. Proin maximus pellentesque bibendum.\r\n\r\nDonec eget tellus sit amet mauris molestie posuere. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque euismod, leo sagittis mollis congue, quam massa egestas velit, non gravida augue massa vitae lectus. Pellentesque hendrerit eget lacus eget posuere. Maecenas ultricies, velit eu feugiat varius, quam erat vehicula justo, ac accumsan lacus nulla quis sapien. Cras sed ligula sed mi bibendum volutpat. Quisque et arcu mauris. Praesent vel semper eros. Morbi ac molestie libero.\r\n\r\nNunc commodo lorem in eros tempor scelerisque. Curabitur rhoncus sapien et urna elementum, ut fermentum mi elementum. Sed vel justo erat. Suspendisse potenti. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Ut at tortor eu enim aliquam vulputate. Aliquam et lacus blandit, cursus arcu eu, porta est.'),
('check', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris cursus, ante nec consequat dapibus, risus sapien pretium neque, sed convallis justo velit ut elit. Pellentesque pulvinar condimentum nunc sed lobortis. In hac habitasse platea dictumst. Praesent faucibus ex vel lacus hendrerit gravida. Integer nec placerat nisl. Donec eget nibh faucibus tortor dictum rhoncus. Proin rutrum est dapibus leo interdum, vitae gravida ante lacinia. Proin nunc libero, aliquam vitae enim vel, rhoncus imperdiet ligula. Integer ut ullamcorper justo. Proin vel feugiat turpis. Ut mattis, neque ac ornare vehicula, augue neque convallis enim, in pellentesque mauris purus nec lectus. Aliquam rhoncus, quam eu tincidunt tristique, dolor lectus venenatis lorem, nec porttitor dolor tortor in massa. Nullam bibendum enim tortor. Curabitur malesuada metus a nibh dapibus, at suscipit tortor eleifend.\r\n\r\nIn semper odio at dignissim efficitur. Sed lacinia facilisis leo, id molestie justo consectetur quis. Donec in cursus purus. Pellentesque eleifend risus nec purus porta, eu finibus ligula mollis. Vestibulum dignissim lacus eget hendrerit euismod. Donec nunc massa, placerat at nulla a, mollis sollicitudin ante. Curabitur sagittis, dui a cursus egestas, ipsum enim lacinia lorem, nec mattis leo libero a neque. Aenean tempus nisi ut purus hendrerit, vel ullamcorper lorem rhoncus. Morbi tempor lorem eget felis porttitor convallis. Nunc vitae luctus elit, id euismod tellus. Sed ultrices lectus in scelerisque efficitur. Suspendisse potenti. Donec elit nunc, porttitor ac nunc nec, volutpat fermentum turpis.\r\n\r\nDuis ornare lacinia libero, eu pellentesque mi tincidunt at. Nam cursus odio ac tempus egestas. Curabitur facilisis sapien ligula, vel consequat metus dictum sed. Suspendisse id ligula gravida, maximus felis at, luctus sem. Integer fringilla ultricies ex, non placerat tortor ultrices a. Sed tincidunt, eros id fringilla auctor, justo diam scelerisque ante, nec dignissim dolor metus id lectus. Morbi dignissim tincidunt neque, eu ultricies justo imperdiet ut. Maecenas viverra tristique diam ut semper. Sed imperdiet dictum quam in suscipit. Duis id volutpat ex. Proin a nisi tempor, fermentum nunc id, fringilla lacus. Duis in lectus hendrerit, semper justo vitae, convallis elit. Mauris tempus lorem sit amet diam placerat feugiat.\r\n\r\nInteger nec ornare tellus. Donec malesuada iaculis nisi, a ultrices mi ultrices sit amet. Aenean tincidunt massa vitae porttitor posuere. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi posuere fermentum enim at pharetra. Phasellus a purus sit amet eros posuere rutrum eget sed quam. Ut ultrices ultricies varius. Fusce blandit tincidunt ante at mollis. Integer condimentum urna eu risus faucibus tristique. Curabitur nisl ipsum, scelerisque ac mi congue, vehicula dictum nisl.\r\n\r\nNam aliquam, erat ac tincidunt rutrum, erat neque consectetur arcu, ultricies laoreet augue mauris ac diam. Duis faucibus diam vitae diam consequat, quis ullamcorper enim fermentum. Quisque ut odio justo. Duis blandit elit vitae lacus interdum lobortis. Vivamus odio tortor, lobortis eget turpis sed, lobortis cursus nulla. In ornare non enim at ullamcorper. Praesent maximus vulputate hendrerit. Quisque vitae tellus ac justo consequat faucibus sit amet ut eros. Cras sit amet massa non est aliquet eleifend. Duis sodales luctus suscipit. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;\r\n\r\nEtiam efficitur, odio sit amet porta bibendum, nisl enim mollis lectus, vitae consequat tortor felis et turpis. Nam tortor nibh, suscipit vitae interdum et, suscipit sit amet eros. Suspendisse arcu ante, consectetur et mi vel, hendrerit vehicula erat. Morbi consequat, augue vehicula pellentesque facilisis, nibh felis viverra odio, a sollicitudin quam elit sit amet mauris. Vivamus dictum ipsum nibh, et pulvinar turpis posuere convallis. Nulla pulvinar mi aliquet elit vestibulum dignissim. Mauris et sem molestie, finibus augue et, porttitor felis.\r\n\r\nEtiam laoreet, nisl luctus lobortis bibendum, nisi enim pellentesque dui, ac rutrum lacus urna at lorem. Cras ultricies enim metus, eu auctor lacus condimentum non. In mauris mauris, rhoncus vitae ante sit amet, placerat ultrices lectus. Pellentesque tincidunt molestie posuere. Suspendisse potenti. Pellentesque elementum rhoncus nisi a elementum. Integer molestie, quam in faucibus pretium, ipsum mi tempus massa, quis congue arcu dui vitae tortor. Nulla justo magna, interdum a pellentesque at, tristique ac sem. Curabitur lacinia interdum lectus, at vestibulum libero luctus quis. Ut maximus tempus tellus sed interdum. Curabitur vel rhoncus nibh, ultricies dapibus quam. Aliquam ante orci, pellentesque vitae elementum vitae, vestibulum non mauris. Vivamus eget sem hendrerit, tincidunt quam ac, dictum massa. Praesent placerat lorem massa, nec congue velit congue quis.'),
('haha', 'Drakon'),
('ssss', 'ehhhh');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `name` varchar(16) NOT NULL,
  `pass` varchar(128) DEFAULT NULL,
  `rate` int(11) NOT NULL,
  `avatar` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`name`, `pass`, `rate`, `avatar`) VALUES
('bredfrom', '96fb1092c294726ace54af3a7828148e', 1, 'images/avatars/bredfrom.jpg'),
('bredik', 'f9259327a416be3f201183d7a9613158', -1, ''),
('bredlalala', 'f9259327a416be3f201183d7a9613158', -1, ''),
('bredon', 'f9259327a416be3f201183d7a9613158', 0, ''),
('check', '123', 15001, ''),
('dimon', 'f9259327a416be3f201183d7a9613158', -1, ''),
('dominika', 'f9259327a416be3f201183d7a9613158', -1, ''),
('drakon', 'f9259327a416be3f201183d7a9613158', -1, ''),
('drek', 'f9259327a416be3f201183d7a9613158', -1, ''),
('Drekthar', '50ffe770574fb932966922a41903e169', -1, ''),
('haha', '50ffe770574fb932966922a41903e169', 499, 'images/avatars/haha.jpg'),
('kkkk', 'f9259327a416be3f201183d7a9613158', 1, ''),
('kolin', 'f9259327a416be3f201183d7a9613158', -1, ''),
('Petr', '570eeff09fd5246c5ef82c4639823adc', 1, ''),
('Ramte', 'f9259327a416be3f201183d7a9613158', -1, ''),
('soma', 'f9259327a416be3f201183d7a9613158', -2, ''),
('someone', '292ea2e6ca39096d39954df65bbb3a9d', 2, ''),
('ssss', '50ffe770574fb932966922a41903e169', 0, 'images/avatars/ssss.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `votes`
--

CREATE TABLE `votes` (
  `voter` varchar(16) NOT NULL,
  `recip` varchar(16) NOT NULL,
  `vote` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `votes`
--

INSERT INTO `votes` (`voter`, `recip`, `vote`) VALUES
('haha', 'check', 0),
('haha', 'bredfrom', 0),
('haha', 'soma', 0),
('haha', 'Ramte', 0),
('haha', 'kolin', 0),
('haha', 'Petr', 1),
('haha', 'kkkk', 0),
('haha', 'drek', 0),
('haha', 'drakon', 0),
('haha', 'dominika', 0),
('haha', 'dimon', 0),
('haha', 'someone', 1),
('haha', 'bredon', 0),
('haha', 'bredik', 0),
('bredfrom', 'check', 0),
('bredfrom', 'haha', 0),
('Drekthar', 'check', 0),
('Drekthar', 'someone', 1),
('haha', 'bredlalala', 0),
('haha', 'Drekthar', 0),
('bredfrom', 'kkkk', 1),
('bredfrom', 'bredon', 1),
('ssss', 'check', 1),
('ssss', 'bredfrom', 1),
('ssss', 'kkkk', 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`name`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`name`),
  ADD KEY `Rating` (`rate`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
