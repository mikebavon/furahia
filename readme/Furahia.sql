-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 28, 2016 at 10:04 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Furahia`
--

-- --------------------------------------------------------

--
-- Table structure for table `ben_beneficiries`
--

CREATE TABLE `ben_beneficiries` (
  `id` bigint(20) NOT NULL,
  `base_created_by` varchar(255) DEFAULT NULL,
  `base_created_time` datetime DEFAULT NULL,
  `building` varchar(255) DEFAULT NULL,
  `cell_phone` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `estate` varchar(255) DEFAULT NULL,
  `fixed_phone` varchar(255) DEFAULT NULL,
  `postal_address` varchar(255) DEFAULT NULL,
  `postal_code` varchar(255) DEFAULT NULL,
  `road` varchar(255) DEFAULT NULL,
  `town` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `birth_cert_no` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `id_no` varchar(255) DEFAULT NULL,
  `id_type` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `marital_status` int(11) DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `notes` text,
  `payroll_no` varchar(255) DEFAULT NULL,
  `person_type` varchar(255) DEFAULT NULL,
  `pin_no` varchar(255) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `charityOrg_id` bigint(20) DEFAULT NULL,
  `imageName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ben_beneficiries`
--

INSERT INTO `ben_beneficiries` (`id`, `base_created_by`, `base_created_time`, `building`, `cell_phone`, `country`, `email`, `estate`, `fixed_phone`, `postal_address`, `postal_code`, `road`, `town`, `website`, `birth_cert_no`, `dob`, `firstname`, `gender`, `id_no`, `id_type`, `lastname`, `marital_status`, `nationality`, `notes`, `payroll_no`, `person_type`, `pin_no`, `salutation`, `surname`, `charityOrg_id`, `imageName`) VALUES
(43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-08-30', 'eer', 'MALE', NULL, NULL, 'erere', NULL, 'Kenya', '<p>ererer</p>\n', NULL, NULL, NULL, NULL, 'rr', 62, 'ajax-loader.gif'),
(44, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-08-30', 'wewe', 'MALE', NULL, NULL, 'wewe', NULL, 'Kenya', '<p>wewewewew</p>\n', NULL, NULL, NULL, NULL, 'wewe', 62, 'ajax-loader4.gif'),
(45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-09-07', 'sdwd', 'MALE', NULL, NULL, 'dwd', NULL, 'Kenya', '<p>sdsdsd</p>\n', NULL, NULL, NULL, NULL, 'dsd', 62, 'annoyed-facepalm-picard.jpg'),
(46, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1899-12-12', 'sds', 'MALE', NULL, NULL, 'dsds', NULL, 'Kenya', '<p>sdsdsds</p>\n', NULL, NULL, NULL, NULL, 'dsd', 62, NULL),
(47, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-09-07', 'dfggf', 'MALE', NULL, NULL, 'fgfg', NULL, 'Kenya', '<p>gfgfgfgfg</p>\n', NULL, NULL, NULL, NULL, 'fgfgf', 62, 'ajax-loader 2.gif'),
(49, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-08-31', 'fgf', 'MALE', NULL, NULL, 'fgfg', NULL, 'Kenya', '<p>fggfgfgfgfgfg</p>\n', NULL, NULL, NULL, NULL, 'fg', 62, 'ajax-loader.gif'),
(50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-08-30', 'df', 'MALE', NULL, NULL, 'dfdfd', NULL, 'Kenya', '<p>dfdfdfdfdf</p>\n', NULL, NULL, NULL, NULL, 'fdf', 62, 'cv-style2.jpg'),
(51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-09-07', 'sfdf', 'MALE', NULL, NULL, 'dfdf', NULL, 'Kenya', '<p>dfdfdfdf</p>\n', NULL, NULL, NULL, NULL, 'dfd', 62, 'cv-style2.jpg'),
(52, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-09-15', 'cdf', 'MALE', NULL, NULL, 'dfdf', NULL, 'Kenya', '<p>sdsdsdsdsds</p>\n', NULL, NULL, NULL, NULL, 'df', 62, 'cv-style2.jpg'),
(53, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-09-13', 'ghgh', 'MALE', NULL, NULL, 'ghg', NULL, 'Kenya', '<p>ghghghgh</p>\n', NULL, NULL, NULL, NULL, 'hghg', 62, 'cv-style.jpg'),
(54, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-08-30', 'wewew', 'MALE', NULL, NULL, 'ewewe', NULL, 'Kenya', '<p>dwewewee</p>\n', NULL, NULL, NULL, NULL, 'ewe', 62, 'cv-style.jpg'),
(55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-08-31', 'wee', 'MALE', NULL, NULL, 'ewewe', NULL, 'Kenya', '<p>wewwewewewwe</p>\n', NULL, NULL, NULL, NULL, 'wewe', 62, 'cv-style.jpg'),
(56, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-09-08', 'dfer', 'MALE', NULL, NULL, 'rer', NULL, 'Kenya', '<p>weewewewew</p>\n', NULL, NULL, NULL, NULL, 'erere', 62, 'cv-style.jpg'),
(57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-09-06', 'sdsdsds', 'MALE', NULL, NULL, 'ds', NULL, 'Kenya', '<p>adadsdsd</p>\n', NULL, NULL, NULL, NULL, 'sdsd', 62, '253407_2141484057386_3864468_n.jpg'),
(58, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-09-13', 'wwew', 'MALE', NULL, NULL, 'wewe', NULL, 'Kenya', '<p>dfdfdfdfdfdff</p>\n', NULL, NULL, NULL, NULL, 'we', 62, '303006_2512460131556_1254726433_33078971_1504711854_n.jpg'),
(59, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1899-11-27', 'eer', 'MALE', NULL, NULL, 'ererer', NULL, 'Kenya', '<p>errerererer</p>\n', NULL, NULL, NULL, NULL, 'ere', 62, '303006_2512460131556_1254726433_33078971_1504711854_n.jpg'),
(60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-09-15', 'dfdf', 'MALE', NULL, NULL, 'fdfd', NULL, 'Kenya', '<p>dgdfdfdfdfdf</p>\n', NULL, NULL, NULL, NULL, 'dfdfdf', 62, '303006_2512460131556_1254726433_33078971_1504711854_n.jpg'),
(61, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-09-01', 'erde', 'MALE', NULL, NULL, 'dfdf', NULL, 'Kenya', '<p>dfdfdfdf</p>\n', NULL, NULL, NULL, NULL, 'fdf', 62, '304253_2512468451764_1254726433_33079004_1429495622_n.jpg'),
(62, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-08-30', 'erer', 'MALE', NULL, NULL, 'ererer', NULL, 'Kenya', '<p>eererererer</p>\n', NULL, NULL, NULL, NULL, 'ererer', 62, 'Music8207.jpg'),
(63, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1995-03-01', 'Samuel', 'MALE', NULL, NULL, 'Murani', NULL, 'Kenya', '<p>this is samule</p>\n', NULL, NULL, NULL, NULL, 'Ndiva', 71, 'samuelNdiva.jpg'),
(64, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Samuel', 'MALE', NULL, NULL, 'Odhis', NULL, 'Kenya', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, ', NULL, NULL, NULL, NULL, 'Miller', 62, 'annoyed-facepalm-picard.jpg'),
(65, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mary', 'FEMALE', NULL, NULL, 'Wanjiku', NULL, 'Kenya', 'ed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur? At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere', NULL, NULL, NULL, NULL, 'Chei', 62, 'ajax-loader5.gif'),
(66, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Elizabeth', 'FEMALE', NULL, NULL, 'Shitanda', NULL, 'Tanzania', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure? On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee\n', NULL, NULL, NULL, NULL, 'Wesonga', 63, 'ajax-loader5.gif'),
(67, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-09-14', 'Mfuon', 'MALE', NULL, NULL, 'LeoLoe', NULL, 'Kenya', '<table border="0" cellpadding="0" cellspacing="0" style="width:100%" summary="Header navigation table">\n	<tbody>\n		<tr>\n			<th colspan="3">Red Hat Enterprise Linux 3: Red Hat Enterprise Linux Step By Step Guide</th>\n		</tr>\n		<tr>\n			<td><a href="https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Linux/3/html/Step_by_Step_Guide/s1-navigating-pwd.html">Prev</a></td>\n			<td>Chapter 3. Shell Prompt Basics</td>\n			<td><a href="https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Linux/3/html/Step_by_Step_Guide/s1-navigating-using-ls.html">Next</a></td>\n		</tr>\n	</tbody>\n</table>\n\n<hr />\n<h1><a name="S1-NAVIGATING-CD"></a>3.4. Changing Directories with <tt>cd</tt></h1>\n\n<p>Changing directories is easy as long as you know where you are (your current directory) and how that relates to where you want to go.</p>\n\n<p>To change directories, use the <tt>cd</tt> command. Typing this command by itself returns you to your home directory; moving to any other directory requires a <em>pathname</em>.</p>\n\n<p>You can use <em>absolute</em> or <em>relative</em> pathnames. Absolute paths start at the top of the file system with <tt>/</tt> (referred to as root) and then look down for the requested directory; relative paths look down from your current directory, wherever that may be. The following directory tree illustrates how <tt>cd</tt> operates.</p>\n\n<table style="width:100%">\n	<tbody>\n		<tr>\n			<td>\n			<pre>\n<tt>/</tt>\n<tt>/directory1</tt>\n<tt>/directory1/directory2</tt>\n<tt>/directory1/directory2/directory3</tt></pre>\n			</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>If you are currently in <tt>directory3</tt> and you want to switch to <tt>directory1</tt>, you need to move up in the directory tree.</p>\n\n<p>Executing the command</p>\n\n<table style="width:100%">\n	<tbody>\n		<tr>\n			<td>\n			<pre>\n<tt>cd directory1</tt> </pre>\n			</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>while you are in <tt>directory3</tt>, presents you with an error message explaining that there is no such directory. This is because there is no <tt>directory1</tt> below <tt>directory3</tt>.</p>\n\n<p>To move up to <tt>directory1</tt>, type:</p>\n\n<table style="width:100%">\n	<tbody>\n		<tr>\n			<td>\n			<pre>\n<tt>cd /directory1</tt> </pre>\n			</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>This is an example of an absolute path. It tells Linux to start at the top of the directory tree (<tt>/</tt>) and change to <tt>directory1</tt>. A path is absolute if the first character is a <tt>/</tt>. Otherwise, it is a relative path.</p>\n\n<p>Using absolute paths allows you to change to a directory from the <tt>/</tt> directory, which requires you to know and type the complete path. Using relative paths allows you to change to a directory relative to the directory you are currently in, which can be convenient if you are changing to a subdirectory within your current directory.</p>\n\n<p>The command <tt>cd ..</tt> tells your system to go up to the directory immediately above the one in which you are currently working. To go up two directories, use the <tt>cd ../..</tt> command.</p>\n\n<p>Use the following exercise to test what you have learned regarding absolute and relative paths. From your home directory, type the relative path:</p>\n\n<table style="width:100%">\n	<tbody>\n		<tr>\n			<td>\n			<pre>\n<tt>cd ../../etc/X11</tt></pre>\n			</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>After using the full command in the example, you should be in the directory <tt>X11</tt>, which is where configuration files and directories related to the X Window System are available.</p>\n\n<p>Take a look at your last <tt>cd</tt> command. You told your system to:</p>\n\n<p>&nbsp;</p>\n\n<ol>\n	<li>\n	<p>Go up one level to your login directory&#39;s parent directory (probably <tt>/home</tt>)</p>\n	</li>\n	<li>\n	<p>Then go up to that directory&#39;s parent (which is the root, or <tt>/</tt>, directory)</p>\n	</li>\n	<li>\n	<p>Then go down to the <tt>/etc/</tt> directory</p>\n	</li>\n	<li>\n	<p>Finally, go to the <tt>X11/</tt> directory</p>\n	</li>\n</ol>\n\n<p>Conversely, using an absolute path moves you to the <tt>/etc/X11/</tt> directory more quickly. For example:</p>\n\n<table style="width:100%">\n	<tbody>\n		<tr>\n			<td>\n			<pre>\n<tt>cd /etc/X11</tt></pre>\n			</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>Absolute paths start from the root directory (/) and move down to the directory you specify.</p>\n\n<p>&nbsp;</p>\n\n<table border="0" style="width:100%">\n	<tbody>\n		<tr>\n			<td><img alt="Note" src="https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Linux/3/html/Step_by_Step_Guide/stylesheet-images/note.png" /></td>\n			<th><strong>Note</strong></th>\n		</tr>\n		<tr>\n			<td>&nbsp;</td>\n			<td>\n			<p>Always make sure you know which working directory you are in before you state the relative path to the directory or file you want to get to. You do not have to worry about your position in the file system, though, when you state the absolute path to another directory or file. If you are not sure, type <tt>pwd</tt> and your current working directory is displayed, which can be your guide for moving up and down directories using relative pathnames.</p>\n			</td>\n		</tr>\n	</tbody>\n</table>\n\n<p><a name="CD-ACTIONS"></a></p>\n\n<table border="1" cellpadding="4" cellspacing="0">\n	<thead>\n		<tr>\n			<th>Command</th>\n			<th>Function</th>\n		</tr>\n	</thead>\n	<tbody>\n		<tr>\n			<td><tt>cd</tt></td>\n			<td>Returns you to your login directory</td>\n		</tr>\n		<tr>\n			<td><tt>cd ~</tt></td>\n			<td>Also returns you to your login directory</td>\n		</tr>\n		<tr>\n			<td><tt>cd /</tt></td>\n			<td>Takes you to the entire system&#39;s root directory</td>\n		</tr>\n		<tr>\n			<td><tt>cd /root</tt></td>\n			<td>Takes you to the home directory of the root, or superuser, account created at installation; you must be the root user to access this directory</td>\n		</tr>\n		<tr>\n			<td><tt>cd /home</tt></td>\n			<td>Takes you to the home directory, where user login directories are usually stored</td>\n		</tr>\n		<tr>\n			<td><tt>cd ..</tt></td>\n			<td>Moves you up one directory</td>\n		</tr>\n		<tr>\n			<td><tt>cd ~<tt><em>otheruser</em></tt></tt></td>\n			<td>Takes you to <em>otheruser&#39;s</em> login directory, if <em>otheruser</em> has granted you permission</td>\n		</tr>\n		<tr>\n			<td><tt>cd /dir1/subdirfoo</tt></td>\n			<td>Regardless of which directory you are in, this absolute path takes you directly to <tt>subdirfoo</tt>, a subdirectory of <tt>dir1</tt></td>\n		</tr>\n		<tr>\n			<td><tt>cd ../../dir3/dir2</tt></td>\n			<td>This relative path takes you up two directories, then to <tt>dir3</tt>, then to the <tt>dir2</tt> directory</td>\n		</tr>\n	</tbody>\n</table>\n\n<p><strong>Table 3-1. <tt>cd</tt> Options</strong></p>\n\n<p>Now that you are starting to understand how to change directories, see what happens when you change to root&#39;s login directory (the superuser account). Type:</p>\n\n<table style="width:100%">\n	<tbody>\n		<tr>\n			<td>\n			<pre>\n<tt>cd /root</tt></pre>\n			</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>If you are not logged in as root, you are <em>denied permission</em> to access that directory.</p>\n\n<p>Denying access to the root and other users&#39; accounts (or login directories) is one way your Linux system prevents accidental or malicious tampering. Refer to <a href="https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Linux/3/html/Step_by_Step_Guide/s1-navigating-ownership.html">Section 3.13 <em>Ownership and Permissions</em></a>.</p>\n\n<p>To change to the root login and root directory, use the <tt>su -</tt> command.</p>\n\n<table style="width:100%">\n	<tbody>\n		<tr>\n			<td>\n			<pre>\n<tt>su -</tt></pre>\n			</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>&nbsp;</p>\n\n<table border="0" style="width:100%">\n	<tbody>\n		<tr>\n			<td><img alt="Tip" src="https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Linux/3/html/Step_by_Step_Guide/stylesheet-images/tip.png" /></td>\n			<th><strong>Tip</strong></th>\n		</tr>\n		<tr>\n			<td>&nbsp;</td>\n			<td>\n			<p>The command <tt>su</tt> means substitute users and it allows you to log in as another user temporarily. When you type <tt>su</tt> by itself and press [Enter], you become root (also called the superuser) while still inside your login shell (your user&#39;s home directory). Typing <tt>su -</tt> makes you become root with root&#39;s login shell; it is as if you had logged in as root originally.</p>\n			</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>As soon as you give the root password, the prompt changes to superuser status. For example:</p>\n\n<table style="width:100%">\n	<tbody>\n		<tr>\n			<td>\n			<pre>\n<tt><tt>[root@localhost root]$</tt></tt></pre>\n			</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>When you are done working as root, type <tt>exit</tt> at the prompt; you are returned to your user account.</p>\n\n<hr />\n<table border="0" cellpadding="0" cellspacing="0" style="width:100%" summary="Footer navigation table">\n	<tbody>\n		<tr>\n			<td><a href="https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Linux/3/html/Step_by_Step_Guide/s1-navigating-pwd.html">Prev</a></td>\n			<td><a href="https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Linux/3/html/Step_by_Step_Guide/index.html">Home</a></td>\n			<td><a href="https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Linux/3/html/Step_by_Step_Guide/s1-navigating-using-ls.html">Next</a></td>\n		</tr>\n		<tr>\n			<td>Determining Your Current Directory with <tt>pwd</tt></td>\n			<td><a href="https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Linux/3/html/Step_by_Step_Guide/ch-basics.html">Up</a></td>\n			<td>View Directory Contents with ls</td>\n		</tr>\n	</tbody>\n</table>\n', NULL, NULL, NULL, NULL, 'Odour', 71, 'Mfuon.jpg'),
(70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Brian', 'MALE', NULL, NULL, 'Yule', NULL, 'Kenya', 'Lorem ipsum dolor sit amet, sea delicata delicatissimi et. Imperdiet percipitur duo id, elitr fabellas delicatissimi mei no. In aliquid tibique sit, ut mea clita periculis hendrerit. Pro cibo illud ad, cum et numquam omnesque delicatissimi. Lucilius periculis est ei.\n\nMaiorum oportere ius et, ei his denique quaestio. Ne purto officiis has. Id quot definiebas qui. Te nam fabulas albucius, fugit repudiandae in eum.\n\nOption antiopam in eum. His cu probatus complectitur, te tritani tincidunt his. Mea vidit scriptorem te. Vix perpetua pericula argumentum ea. Ex elitr inimicus vis. Quodsi malorum usu ne.\n\nDuo tibique recteque suavitate ea. Sale animal dolorum mel an, ex mel deseruisse incorrupte intellegam. In sale essent eripuit est. Mel te dicat concludaturque.\n\nCetero accumsan fabellas his ea, ne iusto ornatus vis, vel probatus recteque ex. Vis populo melius petentium at, mentitum insolens pro at. Ubique appetere in eam. Has libris melius ut. Sonet facete docendi per ex.', NULL, NULL, NULL, NULL, 'Mmoja', 62, 'angry-no.jpg'),
(86, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Elizabeth', 'FEMALE', NULL, NULL, 'Mary', NULL, 'Kenya', 'This is the number that  i user', NULL, NULL, NULL, NULL, 'Shitanda', 71, 'ajax-loader5.gif');

-- --------------------------------------------------------

--
-- Table structure for table `co_charity_orgs`
--

CREATE TABLE `co_charity_orgs` (
  `id` bigint(20) NOT NULL,
  `base_created_by` varchar(255) DEFAULT NULL,
  `base_created_time` datetime DEFAULT NULL,
  `building` varchar(255) DEFAULT NULL,
  `cell_phone` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `estate` varchar(255) DEFAULT NULL,
  `fixed_phone` varchar(255) DEFAULT NULL,
  `postal_address` varchar(255) DEFAULT NULL,
  `postal_code` varchar(255) DEFAULT NULL,
  `road` varchar(255) DEFAULT NULL,
  `town` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `descr` text,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `co_charity_orgs`
--

INSERT INTO `co_charity_orgs` (`id`, `base_created_by`, `base_created_time`, `building`, `cell_phone`, `country`, `email`, `estate`, `fixed_phone`, `postal_address`, `postal_code`, `road`, `town`, `website`, `descr`, `name`) VALUES
(62, NULL, NULL, 'NAIROBI WEST', '0715971418', 'KENYA', 'INFO@BERNADO.COM', 'Nairobi', '0204455669', '7974', '00200', 'LANGATA', 'NAIROBI', 'www.stbernados.com', '\nWhere does it come from?\n\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.\n\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.\n', 'St. Bernado''s Home'),
(63, NULL, NULL, 'ELDORET TOWN', '0710756490', 'KENYA', 'INFO@SOSELDORET.COM', 'Kipchoge Keino Road', '0204455667', '1000', '00671', 'ELDORET', 'ELDORE', 'www.soseldoret.com', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'Save Our Souls- Eldoret'),
(68, NULL, NULL, 'SDSDS', '0700000000', 'KENYA', 'NDIKRAXX@GMAIL.COM', 'dsdsd', '0700000000', '070000000000', '070000000000', 'SDD', 'SDS', 'dsdsdsds', '<p>sdwdwewewew</p>\n', 'dsd'),
(69, NULL, NULL, 'DSDS', '0000000000', 'KENYA', 'NDIKRAXX@GMAIL.COM', 'sds', '0000000000', '0000000000', '0000000000', 'DSDSD', 'SDSD', '0000000000', '<p>00000000000000000000000000000000000000000000000000</p>\n', 'dsds'),
(70, NULL, NULL, 'SDSDSD', '0000000000', 'KENYA', 'NDIKRAXX@GMAIL.COM', 'sd', '0000000000', '0000000000', '0000000000', 'SDSDSD', 'SDSD', '0000000000', '<p>000000000000000000000000000000</p>\n', 'ssdsd'),
(71, NULL, NULL, 'NAIROBI', '0715971418', 'KENYA', 'INFO@FURAHIA.COM', 'Naorobi', '0715971418', '07892', '56636', 'THIKA ROAD', 'KISUMU', 'weedmn@dmnf.jf', 'udjfnjdhjhnfjdnfjdhfujdhf', 'Furahia'),
(72, NULL, NULL, 'GFSG', '0000000000', 'KENYA', 'NDIKRAXX@GMAIL.COM', 'fgsf', '0000000000', '0000000000', '0000000000', 'GFG', 'SFSG', '0000000000', '<p>000000000000000000000000000000</p>\n', 'fbsf'),
(73, NULL, NULL, 'WEWE', '0000000000', 'KENYA', 'NDIKRAXX@GMAIL.COM', 'weww', '0000000000', '0000000000', '0000000000', 'WEW', 'EWEWE', '0000000000', '<p>dfdfdefefe</p>\n', 'weewe'),
(74, NULL, NULL, 'FDFDF', '0000000000', 'KENYA', 'NDIKRAXX@GMAIL.COM', 'dfdfd', '0000000000', '0000000000', '0000000000', 'FDFD', 'FDFDF', '0000000000', '<p>00000000000000000000</p>\n', 'fdfdfd'),
(75, NULL, NULL, 'FDFD', '0000000000', 'KENYA', 'NDIKRAXX@GMAIL.COM', 'fdfdf', '0000000000', '0000000000', '0000000000', 'DFDF', 'DFDF', '0000000000', '<p>00000000000000000000000000000000000000000000000000</p>\n', 'dfdf'),
(76, NULL, NULL, 'SDFDF', '0000000000', 'KENYA', 'NDIKRAXX@GMAIL.COM', 'dssf', '0000000000', '0000000000', '0000000000', 'DSFDSF', 'DSFSDF', '0000000000', '<p>000000000000000000000000000000</p>\n', 'ewqfdsf');

-- --------------------------------------------------------

--
-- Table structure for table `dnt_donations`
--

CREATE TABLE `dnt_donations` (
  `id` bigint(20) NOT NULL,
  `base_created_by` varchar(255) DEFAULT NULL,
  `base_created_time` datetime DEFAULT NULL,
  `amt_value` decimal(19,2) DEFAULT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `beneficiary_id` bigint(20) DEFAULT NULL,
  `donor_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `donor_donors`
--

CREATE TABLE `donor_donors` (
  `id` bigint(20) NOT NULL,
  `base_created_by` varchar(255) DEFAULT NULL,
  `base_created_time` datetime DEFAULT NULL,
  `building` varchar(255) DEFAULT NULL,
  `cell_phone` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `estate` varchar(255) DEFAULT NULL,
  `fixed_phone` varchar(255) DEFAULT NULL,
  `postal_address` varchar(255) DEFAULT NULL,
  `postal_code` varchar(255) DEFAULT NULL,
  `road` varchar(255) DEFAULT NULL,
  `town` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `birth_cert_no` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `id_no` varchar(255) DEFAULT NULL,
  `id_type` varchar(255) DEFAULT NULL,
  `imageName` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `marital_status` int(11) DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `notes` text,
  `payroll_no` varchar(255) DEFAULT NULL,
  `person_type` varchar(255) DEFAULT NULL,
  `pin_no` varchar(255) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `auth_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donor_donors`
--

INSERT INTO `donor_donors` (`id`, `base_created_by`, `base_created_time`, `building`, `cell_phone`, `country`, `email`, `estate`, `fixed_phone`, `postal_address`, `postal_code`, `road`, `town`, `website`, `birth_cert_no`, `dob`, `firstname`, `gender`, `id_no`, `id_type`, `imageName`, `lastname`, `marital_status`, `nationality`, `notes`, `payroll_no`, `person_type`, `pin_no`, `salutation`, `surname`, `auth_id`) VALUES
(4, NULL, NULL, NULL, '0788888888', NULL, 'DUNCODI@GMAIL.COM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dancun', 'MALE', '32194158', 'NATIONAL_ID', NULL, 'Odhiambo', NULL, 'Kenya', NULL, NULL, NULL, NULL, 'MR', 'Werungu', 3),
(7, NULL, NULL, NULL, '0724814117', NULL, 'MFOLEE@GMAIL.COM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mfuon', 'MALE', '29787513', 'NATIONAL_ID', NULL, 'leonard', NULL, 'Kenya', NULL, NULL, NULL, NULL, 'MR', 'mfu', 6),
(10, NULL, NULL, NULL, '1111111111', NULL, '1@GM.CO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'One', 'MALE', '9545', 'NATIONAL_ID', NULL, 'One', NULL, 'Kenya', NULL, NULL, NULL, NULL, 'MRS', 'One', 9),
(77, NULL, NULL, NULL, '1111111111', NULL, '1@GM.CO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'One', 'MALE', '9545', 'NATIONAL_ID', NULL, 'One', NULL, 'Kenya', NULL, NULL, NULL, NULL, 'MRS', 'One', NULL),
(208, NULL, NULL, NULL, '0715971418', NULL, 'NDIKRAXX@GMAIL.COM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Brian', 'MALE', '30194002', 'NATIONAL_ID', NULL, 'Ndirangu', NULL, 'Tanzania', NULL, NULL, NULL, NULL, 'MR', 'Muthura', NULL),
(209, NULL, NULL, NULL, '1111111111', NULL, 'NDIKRAXX@GMAIL.COM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dfdfd', 'MALE', '23223', 'NATIONAL_ID', NULL, 'dfdf', NULL, 'Kenya', NULL, NULL, NULL, NULL, 'MR', 'dffdfd', NULL),
(210, NULL, NULL, NULL, '1111111111', NULL, 'NDIKRAXX@GMAIL.COM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dfdfd', 'MALE', '23223', 'NATIONAL_ID', NULL, 'dfdf', NULL, 'Kenya', NULL, NULL, NULL, NULL, 'MR', 'dffdfd', NULL),
(211, NULL, NULL, NULL, '2323232222', NULL, 'NDIKRAXX@GMAIL.COM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'rggf', 'MALE', '2323', 'NATIONAL_ID', NULL, 'fgfg', NULL, 'Tanzania', NULL, NULL, NULL, NULL, 'MR', 'fggfg', 162),
(214, NULL, NULL, NULL, '3434343433', NULL, 'SAM@MURANI.COM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'rtrtr', 'MALE', '3434343', 'NATIONAL_ID', NULL, 'trtrt', NULL, 'Tanzania', NULL, NULL, NULL, NULL, 'MS', 'rtrtrtrt', 213);

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(78);

-- --------------------------------------------------------

--
-- Table structure for table `user_auths`
--

CREATE TABLE `user_auths` (
  `id` bigint(20) NOT NULL,
  `base_created_by` varchar(255) DEFAULT NULL,
  `base_created_time` datetime DEFAULT NULL,
  `orig_password` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_auths`
--

INSERT INTO `user_auths` (`id`, `base_created_by`, `base_created_time`, `orig_password`, `password`, `status`, `username`, `user_id`) VALUES
(3, NULL, '2016-09-09 18:54:12', 'e052537c31dd88ac7525e01a2124dd0e', 'd9039389e630f3a279bc939c81b5887b', 'ACTIVE', 'duncodi@gmail.com', 2),
(6, NULL, '2016-09-13 11:01:21', 'e052537c31dd88ac7525e01a2124dd0e', '41d0d45ff627dbc99e398578b1ac5ec5', 'ACTIVE', 'mfolee@gmail.com', 5),
(9, NULL, '2016-09-13 15:59:16', 'e052537c31dd88ac7525e01a2124dd0e', 'cb87baac33dfd29fe8aaf5743957edbe', 'ACTIVE', '1@gm.co', 8),
(12, NULL, '2016-09-19 08:34:45', 'e052537c31dd88ac7525e01a2124dd0e', 'cb87baac33dfd29fe8aaf5743957edbe', 'ACTIVE', 'sm@gm.com', 11),
(65, NULL, '2016-09-21 13:02:37', 'e052537c31dd88ac7525e01a2124dd0e', 'cb87baac33dfd29fe8aaf5743957edbe', 'ACTIVE', 'mike@gmail.com', 64),
(100, NULL, NULL, 'e052537c31dd88ac7525e01a2124dd0e', 'e052537c31dd88ac7525e01a2124dd0e', 'ACTIVE', NULL, 99),
(102, NULL, NULL, 'e052537c31dd88ac7525e01a2124dd0e', 'e052537c31dd88ac7525e01a2124dd0e', 'ACTIVE', NULL, 101),
(104, NULL, NULL, 'e052537c31dd88ac7525e01a2124dd0e', 'e052537c31dd88ac7525e01a2124dd0e', 'ACTIVE', NULL, 103),
(106, NULL, NULL, 'e052537c31dd88ac7525e01a2124dd0e', 'e052537c31dd88ac7525e01a2124dd0e', 'ACTIVE', NULL, 105),
(108, NULL, NULL, 'e052537c31dd88ac7525e01a2124dd0e', 'e052537c31dd88ac7525e01a2124dd0e', 'ACTIVE', NULL, 107),
(110, NULL, NULL, 'e052537c31dd88ac7525e01a2124dd0e', 'e052537c31dd88ac7525e01a2124dd0e', 'ACTIVE', NULL, 109),
(112, NULL, NULL, 'e052537c31dd88ac7525e01a2124dd0e', 'e052537c31dd88ac7525e01a2124dd0e', 'ACTIVE', NULL, 111),
(114, NULL, NULL, 'e052537c31dd88ac7525e01a2124dd0e', 'e052537c31dd88ac7525e01a2124dd0e', 'ACTIVE', NULL, 113),
(116, NULL, NULL, 'e052537c31dd88ac7525e01a2124dd0e', 'e052537c31dd88ac7525e01a2124dd0e', 'ACTIVE', 'fdfdfdfdf', 115),
(118, NULL, NULL, 'e052537c31dd88ac7525e01a2124dd0e', 'e052537c31dd88ac7525e01a2124dd0e', 'ACTIVE', 'dfdfdfdfdf', 117),
(120, NULL, NULL, 'e052537c31dd88ac7525e01a2124dd0e', 'e052537c31dd88ac7525e01a2124dd0e', 'ACTIVE', NULL, 119),
(122, NULL, NULL, 'e052537c31dd88ac7525e01a2124dd0e', 'e052537c31dd88ac7525e01a2124dd0e', 'ACTIVE', NULL, 121),
(124, NULL, NULL, 'e052537c31dd88ac7525e01a2124dd0e', 'e052537c31dd88ac7525e01a2124dd0e', 'ACTIVE', NULL, 123),
(126, NULL, NULL, 'e052537c31dd88ac7525e01a2124dd0e', 'e052537c31dd88ac7525e01a2124dd0e', 'ACTIVE', NULL, 125),
(128, NULL, NULL, 'e052537c31dd88ac7525e01a2124dd0e', 'e052537c31dd88ac7525e01a2124dd0e', 'ACTIVE', NULL, 127),
(130, NULL, NULL, 'e052537c31dd88ac7525e01a2124dd0e', 'e052537c31dd88ac7525e01a2124dd0e', 'ACTIVE', 'dfddfd@dgf.ffd', 129),
(132, NULL, NULL, 'e052537c31dd88ac7525e01a2124dd0e', 'e052537c31dd88ac7525e01a2124dd0e', 'ACTIVE', NULL, 131),
(134, NULL, NULL, 'e052537c31dd88ac7525e01a2124dd0e', 'e052537c31dd88ac7525e01a2124dd0e', 'ACTIVE', 'ndikraxx@gmail.com', 133),
(136, NULL, NULL, 'e052537c31dd88ac7525e01a2124dd0e', 'e052537c31dd88ac7525e01a2124dd0e', 'ACTIVE', 'fdfdfd@gfgfg.fgg', 135),
(138, NULL, '2016-09-07 11:03:42', 'e052537c31dd88ac7525e01a2124dd0e', 'e052537c31dd88ac7525e01a2124dd0e', 'ACTIVE', 'jdbfdjs@snms.xjsn', 137),
(140, NULL, '2016-09-07 11:16:56', 'e052537c31dd88ac7525e01a2124dd0e', 'e052537c31dd88ac7525e01a2124dd0e', 'ACTIVE', 'ndikraxx@gmail.com', 139),
(142, NULL, '2016-09-07 11:19:49', 'e052537c31dd88ac7525e01a2124dd0e', 'e052537c31dd88ac7525e01a2124dd0e', 'ACTIVE', 'ndikraxx@gmail.com', 141),
(145, NULL, '2016-09-07 11:32:35', 'e052537c31dd88ac7525e01a2124dd0e', 'e052537c31dd88ac7525e01a2124dd0e', 'ACTIVE', 'ndikraxx@gmail.com', 143),
(146, NULL, '2016-09-07 11:32:35', 'e052537c31dd88ac7525e01a2124dd0e', 'e052537c31dd88ac7525e01a2124dd0e', 'ACTIVE', 'ndikraxx@gmail.com', 144),
(148, NULL, '2016-09-07 11:44:45', 'e052537c31dd88ac7525e01a2124dd0e', 'e052537c31dd88ac7525e01a2124dd0e', 'ACTIVE', 'ndikraxx@gmail.com', 147),
(150, NULL, '2016-09-07 12:16:51', 'e052537c31dd88ac7525e01a2124dd0e', 'e052537c31dd88ac7525e01a2124dd0e', 'ACTIVE', 'b@b.com', 149),
(152, NULL, '2016-09-07 12:19:49', 'e052537c31dd88ac7525e01a2124dd0e', 'a', 'ACTIVE', 'a', 151),
(154, NULL, '2016-09-07 12:48:57', 'e052537c31dd88ac7525e01a2124dd0e', 'e052537c31dd88ac7525e01a2124dd0e', 'ACTIVE', 'ndikraxx@gmail.com', 153),
(156, NULL, '2016-09-07 13:00:07', 'e052537c31dd88ac7525e01a2124dd0e', 'aaaaaa', 'ACTIVE', 'a@a.com', 155),
(158, NULL, '2016-09-07 13:03:20', 'e052537c31dd88ac7525e01a2124dd0e', '7114ddae666a380c8dc11ad5d96d429c', 'ACTIVE', 'b@b.bb', 157),
(160, NULL, '2016-09-07 13:06:13', 'e052537c31dd88ac7525e01a2124dd0e', 'fdcfa6c9ee93ce6479581b28d28377ea', 'ACTIVE', 'mfuon@leo.com', 159),
(162, NULL, '2016-09-07 13:57:12', 'e052537c31dd88ac7525e01a2124dd0e', 'cb87baac33dfd29fe8aaf5743957edbe', 'ACTIVE', 'ndikraxx@gmail.com', 161),
(164, NULL, '2016-09-07 14:02:21', 'e052537c31dd88ac7525e01a2124dd0e', '5abae9e5c52b6b81ebcff723ccf2a2f9', 'ACTIVE', 'fgfg@fgfg.ddf', 163),
(166, NULL, '2016-09-07 14:04:19', 'e052537c31dd88ac7525e01a2124dd0e', 'a6a8e61c23016a3b79dee39672ac4d98', 'ACTIVE', 'ndikraxx@gmail.com', 165),
(168, NULL, '2016-09-07 14:05:11', 'e052537c31dd88ac7525e01a2124dd0e', 'a6a8e61c23016a3b79dee39672ac4d98', 'ACTIVE', 'ndikraxx@gmail.com', 167),
(170, NULL, '2016-09-07 14:06:26', 'e052537c31dd88ac7525e01a2124dd0e', 'dbfb425e88fc0a8870fc0646608fe2cd', 'ACTIVE', 'ndikraxx@gmail.com', 169),
(172, NULL, '2016-09-07 14:08:59', 'e052537c31dd88ac7525e01a2124dd0e', 'f5b0991e9bf5a8238287412a6810507d', 'ACTIVE', 'ndikraxx@gmail.com', 171),
(174, NULL, '2016-09-07 14:10:26', 'e052537c31dd88ac7525e01a2124dd0e', '290479dec21bfedaab5312a4a6710e8e', 'ACTIVE', 'ndikraxx@gmail.com', 173),
(176, NULL, '2016-09-07 14:12:15', 'e052537c31dd88ac7525e01a2124dd0e', 'c49a4a58586236b8060a03683bc8b69d', 'ACTIVE', 'ndikraxx@gmail.com', 175),
(178, NULL, '2016-09-07 14:14:42', 'e052537c31dd88ac7525e01a2124dd0e', 'b944df3c83b8be49146771c76005239d', 'ACTIVE', 'ndikraxx@gmail.com', 177),
(180, NULL, '2016-09-07 14:16:27', 'e052537c31dd88ac7525e01a2124dd0e', '3860791d70c70ce0ac9bbf8c6e56f334', 'ACTIVE', 'ndikraxx@gmail.com', 179),
(182, NULL, '2016-09-07 14:17:31', 'e052537c31dd88ac7525e01a2124dd0e', '7656f3099310b4be327c76835298bf68', 'ACTIVE', 'ndikraxx@gmail.com', 181),
(184, NULL, '2016-09-07 14:19:09', 'e052537c31dd88ac7525e01a2124dd0e', 'd29360051fe5d5a254ce34ff50dd60ca', 'ACTIVE', 'ndikraxx@gmail.com', 183),
(186, NULL, '2016-09-07 14:21:15', 'e052537c31dd88ac7525e01a2124dd0e', 'c49a4a58586236b8060a03683bc8b69d', 'ACTIVE', 'ndikraxx@gmail.com', 185),
(188, NULL, '2016-09-07 14:23:42', 'e052537c31dd88ac7525e01a2124dd0e', '1bad11605b4aef18882d44b8db3b2af3', 'ACTIVE', 'ndikraxx@gmail.com', 187),
(190, NULL, '2016-09-07 14:40:06', 'e052537c31dd88ac7525e01a2124dd0e', 'cb87baac33dfd29fe8aaf5743957edbe', 'ACTIVE', 'mo@gmail.com', 189),
(192, NULL, '2016-09-07 14:41:22', 'e052537c31dd88ac7525e01a2124dd0e', 'cb87baac33dfd29fe8aaf5743957edbe', 'ACTIVE', 'hau@gmail.com', 191),
(194, NULL, '2016-09-07 15:34:41', 'e052537c31dd88ac7525e01a2124dd0e', 'cb87baac33dfd29fe8aaf5743957edbe', 'ACTIVE', 'sam@murani.com', 193),
(196, NULL, '2016-09-08 17:20:08', 'e052537c31dd88ac7525e01a2124dd0e', '140b211cdc92bc20acf8d45c9903c3ee', 'ACTIVE', 'mfo@lee.com', 195),
(213, NULL, '2016-09-09 13:14:40', 'e052537c31dd88ac7525e01a2124dd0e', '2ae7655aa82961730d6d76e70dcba04a', 'ACTIVE', 'sam@murani.com', 212);

-- --------------------------------------------------------

--
-- Table structure for table `user_users`
--

CREATE TABLE `user_users` (
  `id` bigint(20) NOT NULL,
  `base_created_by` varchar(255) DEFAULT NULL,
  `base_created_time` datetime DEFAULT NULL,
  `account_locked` varchar(255) DEFAULT NULL,
  `account_status` varchar(255) DEFAULT NULL,
  `user_profile` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_users`
--

INSERT INTO `user_users` (`id`, `base_created_by`, `base_created_time`, `account_locked`, `account_status`, `user_profile`, `username`) VALUES
(2, NULL, '2016-09-09 18:54:12', 'NO', 'ACTIVE', NULL, NULL),
(5, NULL, '2016-09-13 11:01:21', 'NO', 'ACTIVE', NULL, NULL),
(8, NULL, '2016-09-13 15:59:15', 'NO', 'ACTIVE', NULL, NULL),
(11, NULL, '2016-09-19 08:34:44', 'NO', 'ACTIVE', NULL, NULL),
(64, NULL, '2016-09-21 13:02:37', 'NO', 'ACTIVE', NULL, NULL),
(99, NULL, '2016-09-07 09:56:38', 'NO', 'ACTIVE', NULL, NULL),
(101, NULL, '2016-09-07 10:10:51', 'NO', 'ACTIVE', NULL, NULL),
(103, NULL, '2016-09-07 10:18:43', 'NO', 'ACTIVE', NULL, NULL),
(105, NULL, '2016-09-07 10:23:48', 'NO', 'ACTIVE', NULL, NULL),
(107, NULL, '2016-09-07 10:25:33', 'NO', 'ACTIVE', NULL, NULL),
(109, NULL, '2016-09-07 10:27:45', 'NO', 'ACTIVE', NULL, NULL),
(111, NULL, '2016-09-07 10:29:54', 'NO', 'ACTIVE', NULL, NULL),
(113, NULL, '2016-09-07 10:30:43', 'NO', 'ACTIVE', NULL, NULL),
(115, NULL, '2016-09-07 10:35:30', 'NO', 'ACTIVE', NULL, NULL),
(117, NULL, '2016-09-07 10:36:07', 'NO', 'ACTIVE', NULL, NULL),
(119, NULL, '2016-09-07 10:41:41', 'NO', 'ACTIVE', NULL, NULL),
(121, NULL, '2016-09-07 10:43:47', 'NO', 'ACTIVE', NULL, NULL),
(123, NULL, '2016-09-07 10:45:48', 'NO', 'ACTIVE', NULL, NULL),
(125, NULL, '2016-09-07 10:47:17', 'NO', 'ACTIVE', NULL, NULL),
(127, NULL, '2016-09-07 10:52:08', 'NO', 'ACTIVE', NULL, NULL),
(129, NULL, '2016-09-07 10:53:49', 'NO', 'ACTIVE', NULL, 'dfddfd@dgf.ffd'),
(131, NULL, '2016-09-07 10:55:55', 'NO', 'ACTIVE', NULL, NULL),
(133, NULL, '2016-09-07 10:59:58', 'NO', 'ACTIVE', NULL, NULL),
(135, NULL, '2016-09-07 11:01:08', 'NO', 'ACTIVE', NULL, NULL),
(137, NULL, '2016-09-07 11:03:42', 'NO', 'ACTIVE', NULL, NULL),
(139, NULL, '2016-09-07 11:16:56', 'NO', 'ACTIVE', NULL, NULL),
(141, NULL, '2016-09-07 11:19:48', 'NO', 'ACTIVE', NULL, NULL),
(143, NULL, '2016-09-07 11:32:35', 'NO', 'ACTIVE', NULL, NULL),
(144, NULL, '2016-09-07 11:32:35', 'NO', 'ACTIVE', NULL, NULL),
(147, NULL, '2016-09-07 11:44:45', 'NO', 'ACTIVE', NULL, NULL),
(149, NULL, '2016-09-07 12:16:51', 'NO', 'ACTIVE', NULL, NULL),
(151, NULL, '2016-09-07 12:19:49', 'NO', 'ACTIVE', NULL, NULL),
(153, NULL, '2016-09-07 12:48:57', 'NO', 'ACTIVE', NULL, NULL),
(155, NULL, '2016-09-07 13:00:07', 'NO', 'ACTIVE', NULL, NULL),
(157, NULL, '2016-09-07 13:03:20', 'NO', 'ACTIVE', NULL, NULL),
(159, NULL, '2016-09-07 13:06:12', 'NO', 'ACTIVE', NULL, NULL),
(161, NULL, '2016-09-07 13:57:12', 'NO', 'ACTIVE', NULL, NULL),
(163, NULL, '2016-09-07 14:02:21', 'NO', 'ACTIVE', NULL, NULL),
(165, NULL, '2016-09-07 14:04:19', 'NO', 'ACTIVE', NULL, NULL),
(167, NULL, '2016-09-07 14:05:10', 'NO', 'ACTIVE', NULL, NULL),
(169, NULL, '2016-09-07 14:06:25', 'NO', 'ACTIVE', NULL, NULL),
(171, NULL, '2016-09-07 14:08:59', 'NO', 'ACTIVE', NULL, NULL),
(173, NULL, '2016-09-07 14:10:25', 'NO', 'ACTIVE', NULL, NULL),
(175, NULL, '2016-09-07 14:12:15', 'NO', 'ACTIVE', NULL, NULL),
(177, NULL, '2016-09-07 14:14:42', 'NO', 'ACTIVE', NULL, NULL),
(179, NULL, '2016-09-07 14:16:27', 'NO', 'ACTIVE', NULL, NULL),
(181, NULL, '2016-09-07 14:17:31', 'NO', 'ACTIVE', NULL, NULL),
(183, NULL, '2016-09-07 14:19:08', 'NO', 'ACTIVE', NULL, NULL),
(185, NULL, '2016-09-07 14:21:15', 'NO', 'ACTIVE', NULL, NULL),
(187, NULL, '2016-09-07 14:23:42', 'NO', 'ACTIVE', NULL, NULL),
(189, NULL, '2016-09-07 14:40:06', 'NO', 'ACTIVE', NULL, NULL),
(191, NULL, '2016-09-07 14:41:22', 'NO', 'ACTIVE', NULL, NULL),
(193, NULL, '2016-09-07 15:34:41', 'NO', 'ACTIVE', NULL, NULL),
(195, NULL, '2016-09-08 17:20:08', 'NO', 'ACTIVE', NULL, NULL),
(212, NULL, '2016-09-09 13:14:40', 'NO', 'ACTIVE', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ben_beneficiries`
--
ALTER TABLE `ben_beneficiries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKthfdiigqhnfjpx8bgkk86rtg8` (`charityOrg_id`);

--
-- Indexes for table `co_charity_orgs`
--
ALTER TABLE `co_charity_orgs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dnt_donations`
--
ALTER TABLE `dnt_donations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK4x0yfr18933lqt2mvhbpvbmag` (`beneficiary_id`),
  ADD KEY `FKmbulr4vlxqks3bcn851rsmf44` (`donor_id`);

--
-- Indexes for table `donor_donors`
--
ALTER TABLE `donor_donors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_b3q0j44ax5ah7su5mvnro4yjj` (`auth_id`);

--
-- Indexes for table `user_auths`
--
ALTER TABLE `user_auths`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_ovonmrsejdut4tl7u0jhix3ir` (`user_id`);

--
-- Indexes for table `user_users`
--
ALTER TABLE `user_users`
  ADD PRIMARY KEY (`id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ben_beneficiries`
--
ALTER TABLE `ben_beneficiries`
  ADD CONSTRAINT `FK_ilhqd78rerba73yiqxwn1s6y9` FOREIGN KEY (`charityOrg_id`) REFERENCES `co_charity_orgs` (`id`),
  ADD CONSTRAINT `FKthfdiigqhnfjpx8bgkk86rtg8` FOREIGN KEY (`charityOrg_id`) REFERENCES `co_charity_orgs` (`id`);

--
-- Constraints for table `dnt_donations`
--
ALTER TABLE `dnt_donations`
  ADD CONSTRAINT `FK4x0yfr18933lqt2mvhbpvbmag` FOREIGN KEY (`beneficiary_id`) REFERENCES `ben_beneficiries` (`id`),
  ADD CONSTRAINT `FK_fjljytp87q81coqappio2g6uu` FOREIGN KEY (`donor_id`) REFERENCES `donor_donors` (`id`),
  ADD CONSTRAINT `FK_rjqkcpmp6eet25lljh4yld1li` FOREIGN KEY (`beneficiary_id`) REFERENCES `ben_beneficiries` (`id`),
  ADD CONSTRAINT `FKmbulr4vlxqks3bcn851rsmf44` FOREIGN KEY (`donor_id`) REFERENCES `donor_donors` (`id`);

--
-- Constraints for table `donor_donors`
--
ALTER TABLE `donor_donors`
  ADD CONSTRAINT `FK_b3q0j44ax5ah7su5mvnro4yjj` FOREIGN KEY (`auth_id`) REFERENCES `user_auths` (`id`);

--
-- Constraints for table `user_auths`
--
ALTER TABLE `user_auths`
  ADD CONSTRAINT `FK_ovonmrsejdut4tl7u0jhix3ir` FOREIGN KEY (`user_id`) REFERENCES `user_users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
