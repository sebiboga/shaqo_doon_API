-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 18, 2021 at 07:46 PM
-- Server version: 10.3.28-MariaDB-cll-lve
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shaqodoo_jobs`
--

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` varchar(70) NOT NULL,
  `company` varchar(150) NOT NULL,
  `link` varchar(500) NOT NULL,
  `token` varchar(70) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `passwd` varchar(101) DEFAULT NULL,
  `API_key` varchar(70) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `company`, `link`, `token`, `email`, `passwd`, `API_key`) VALUES
('2C98A755-D24E-0DAC-4A8E-36DDF2BFBF4D', 'iWelcome', 'https://www.iwelcome.com/careers', NULL, NULL, NULL, NULL),
('35F5F8E9-32AA-EF50-17C8-F631168497CE', 'Accesa', 'https://www.accesa.eu/careers', NULL, NULL, NULL, NULL),
('23D5378F-E759-1CB3-9095-66603F8A995D', 'Consensys', 'https://consensys.net/open-roles/', NULL, NULL, NULL, NULL),
('9B9B15C9-4EFF-3A1F-23D5-8D24C6947DE1', 'Profi', 'https://www.profi.ro/cariera/posturi_disponibile.html', NULL, NULL, NULL, NULL),
('EAED001B-D2C1-BC3A-C58E-F80FDCA59198', 'QuanticLab', 'https://www.quanticlab.com/opened-positions/', NULL, NULL, NULL, NULL),
('8C235090-40D8-C992-70B1-8A6AED286EAB', 'seniorsoftware', 'https://www.seniorsoftware.ro/cariere/', NULL, NULL, NULL, NULL),
('CECD37E9-4097-668D-CA77-E5E8C686F96F', 'Vivre', 'https://vivre.catsone.com/careers/37245-General', NULL, NULL, NULL, NULL),
('844FADB7-EDAD-5953-CFAA-D88094B3A6E5', '3Pillar Global', 'https://www.3pillarglobal.com/job-listings/', NULL, NULL, NULL, NULL),
('68A9675A-78B1-8574-477F-3B0BE046BCD0', 'Aera Technology', 'https://www.aeratechnology.com/careers', NULL, NULL, NULL, NULL),
('A0EE2FB4-D4E2-4015-5225-E56BD54947A7', 'Altom', 'https://altom.com/jobs/', NULL, NULL, NULL, NULL),
('EBCB1B83-2C1A-F7FC-2F7C-901F2EF8AA93', 'ArtSoft Consult', 'https://www.artsoft-consult.ro/careers/job-openings', NULL, NULL, NULL, NULL),
('98BDD03A-0C28-8B00-E7E5-5341DC72E55B', 'ASSIST Software', 'https://assist-software.net/jobs', NULL, NULL, NULL, NULL),
('B391062A-A691-B709-29C4-788133C86040', 'BitLoop', 'https://bitloop.tech/jobs', NULL, NULL, NULL, NULL),
('816453A9-097D-F6C5-4921-CCAA7018380D', 'Bombardier', 'https://jobs.bombardier.com/search/?createNewAlert=false&q=&locationsearch=romania', NULL, NULL, NULL, NULL),
('EECF8AFE-4496-90A3-C5C2-00010F1AC317', 'Brinel', 'https://www.brinel.ro/cariere/', NULL, NULL, NULL, NULL),
('B8AF8E50-C710-1BA3-F140-069BFF15C52B', 'Codespring', 'https://www.codespring.ro/career/current-opportunities', NULL, NULL, NULL, NULL),
('A2A85E72-D6B4-0908-1F8B-D0B89186CC36', 'Coera', 'https://www.co-era.com/careers/', NULL, NULL, NULL, NULL),
('90171FB1-D7DE-C2CF-379A-B7AAEDB298B9', 'Connatix', 'https://boards-api.greenhouse.io/v1/boards/connatix/jobs', NULL, NULL, NULL, NULL),
('454F3678-F50A-D72C-695B-4D11B3ED8D7E', 'DualIT', 'https://dualit.ro/cariere/', NULL, NULL, NULL, NULL),
('6A355BC7-4A2F-8317-80F2-0B46983B6707', 'eMAG', 'https://teams.emag.ro/', NULL, NULL, NULL, NULL),
('3A5E047B-73D4-DF08-7877-21E8A53EE4BB', 'Endava', 'https://careers.endava.com/en/Search-Job', NULL, NULL, NULL, NULL),
('4684756D-60B1-002D-009E-DAC84CA908A3', 'Farmec', 'https://www.farmec.ro/despre-farmec/cariere.html', NULL, NULL, NULL, NULL),
('09B5ED43-8CDF-CE0D-F87B-8C683CAA644A', 'Farmexim', 'https://www.farmexim.ro/posturi-vacante-26.html', NULL, NULL, NULL, NULL),
('FE029195-78EC-027C-719F-D6FF9E0EFECD', 'Fiber IT', 'https://www.fiberit.ro/cariera/', NULL, NULL, NULL, NULL),
('45A8CFB0-4D93-8BFC-F7C1-665D566B27DC', 'Frequentis', 'https://jobs.frequentis.com/careers/SearchJobs/?1302=858865&1302_format=775&listFilterMode=1', NULL, NULL, NULL, NULL),
('89784FF1-B0BB-4103-AEDE-A6B9F628AA92', 'Greppy', 'https://greppysystems.com/careers', NULL, NULL, NULL, NULL),
('B1BE1E57-9E84-637B-C045-D9537CF620C4', 'ING', 'https://www.ing.jobs/romania/posturi-vacante.htm?start=0', NULL, NULL, NULL, NULL),
('8517F07D-3959-F951-1E5D-271CC0A88678', 'Itiviti', 'https://itiviti.teamtailor.com/jobs?location=Cluj-Napoca', NULL, NULL, NULL, NULL),
('51C25B6A-F76A-3E9F-E1B5-8B5F1C315510', 'Jpard', 'https://www.jpard.com/careers/', NULL, NULL, NULL, NULL),
('4C3FF29A-25CB-7D15-9233-A7F3141F0BBC', 'Lateral', 'https://www.lateral-inc.com/careers.html', NULL, NULL, NULL, NULL),
('B35EFC55-DFB8-692C-C9DD-E855AD3053CF', 'Leroy Merlin', 'https://job.leroymerlin.ro/jobs', NULL, NULL, NULL, NULL),
('950546D7-52E3-F49A-6A8E-AAF7694638A8', 'Maxcode', 'https://www.maxcode.net/careers/', NULL, NULL, NULL, NULL),
('ED79CA34-5E41-3900-B0FA-F3E9A1BD7BDF', 'Media Galaxy', 'https://mediagalaxy.ro/cariere/', NULL, NULL, NULL, NULL),
('C5E7244E-832C-EE55-DC02-60F498884FA8', 'Micro Focus', 'https://jobs.microfocus.com/global/en/search-results', NULL, NULL, NULL, NULL),
('407967C8-75A4-607F-921B-6F8944DFBC62', 'Montran', 'http://www.montran.com/jobs/index.html', NULL, NULL, NULL, NULL),
('D533C8E6-854D-82A0-CB67-FE2FC8FBC8CB', 'nemetos', 'https://nemetos.com/en/Careers', NULL, NULL, NULL, NULL),
('A19F4478-87DF-0EB5-6C5E-80B6115C2615', 'Netlogiq', 'https://www.netlogiq.ro/jobs/', NULL, NULL, NULL, NULL),
('14133F78-9001-23FD-8773-F2904982B54A', 'Neusoft', 'https://neusoft.ro/CW-API/jobs', NULL, NULL, NULL, NULL),
('07E4F75C-6EBB-F4C0-1556-70975BA27F05', 'Nokia', 'https://careers.nokia.com/jobs/search/26395575', NULL, NULL, NULL, NULL),
('CF0BEDB1-DFC8-C9DB-3850-A882A3C41D90', 'Omniconvert', 'https://www.omniconvert.com/careers/', NULL, NULL, NULL, NULL),
('467C7610-2053-50B2-2DC2-C3FEC10EEB11', 'Orange', 'https://www.orange.ro/jobs/', NULL, NULL, NULL, NULL),
('251AF30C-2BD7-E65D-09A5-A649130B1B6E', 'PitechPlus', 'https://www.pitechplus.com/page-data/en/open-positions/page-data.json', NULL, NULL, NULL, NULL),
('37A9D3B5-C26D-4C15-BA49-A0A748C4F4A8', 'Pizza Hut Delivery', 'https://www.pizzahutdelivery.ro/cariere', NULL, NULL, NULL, NULL),
('620E068D-978D-9693-0771-60D750477626', 'Quantrabbit', 'http://quantrabbit.com/blog/', NULL, NULL, NULL, NULL),
('F4252063-F562-27D5-071E-0D72EA28C0C6', 'RCS-RDS', 'https://www.digi.ro/cariere', NULL, NULL, NULL, NULL),
('96F2F872-B2DC-B3B8-AE88-0906DD565814', 'RebelDOT', 'https://careers.rebeldot.com/locations/oradea', NULL, NULL, NULL, NULL),
('C0941761-D367-6DEE-00E6-CFE7AFC9EAF6', 'Recognos', 'https://www.recognos.com/category/careers/', NULL, NULL, NULL, NULL),
('E48B55CA-D528-4090-1529-022EBDE90D57', 'redtoblue', 'https://red-to-blue.com/jobs/', NULL, NULL, NULL, NULL),
('78E72159-B82B-414E-19AE-DFFD0B57A29D', 'RIA Solutions Group', 'https://riasolutionsgroup.com/about-us/careers/', NULL, NULL, NULL, NULL),
('262542DF-4BD7-33A8-A088-237FC183AEE3', 'Romstal', 'http://www.romstalgroup.com/romania/despre-romstal-romania', NULL, NULL, NULL, NULL),
('68FDC9DE-FA9E-C7E1-7516-E2F3E95BA9C1', 'Sage Intacct', 'https://jobs.jobvite.com/sage-intacct/search?l=Cluj-Napoca, Romania&c=&q=', NULL, NULL, NULL, NULL),
('9C94FAC2-CEF0-19BC-77D4-8BCDBF8A6B90', 'salt&pepper', 'https://saltandpepper.co/careers/', NULL, NULL, NULL, NULL),
('E589EDDE-F9BC-AAF7-77BA-22FAE0E3F8AE', 'Sameday', 'https://sameday.ro/cariere/', NULL, NULL, NULL, NULL),
('55301A4B-56BF-898C-327F-C4F7742EB3B8', 'SAP', 'https://jobs.sap.com/search/?createNewAlert=false&q=&locationsearch=&optionsFacetsDD_department=&optionsFacetsDD_customfield3=&optionsFacetsDD_country=RO', NULL, NULL, NULL, NULL),
('FD8564AC-4A8C-7623-F0D1-DF2AC8B21BD6', 'Sector Labs', 'https://www.sectorlabs.ro/jobs', NULL, NULL, NULL, NULL),
('012186EB-E425-4697-BD31-4AA41B667FA8', 'Softelligence', 'https://www.softelligence.net/job-openings/', NULL, NULL, NULL, NULL),
('B22E0827-8180-ADBE-4D76-14199A48EF34', 'Splend Technology', 'https://splend.bamboohr.com/jobs/', NULL, NULL, NULL, NULL),
('63FF41CF-5FFD-C8DF-8F7B-9086AE9EE9E2', 'Taledo', 'https://taledo.bamboohr.com/jobs/embed.php', NULL, NULL, NULL, NULL),
('DAC0B3A4-EF47-1EB3-AA9B-8D4FD255CA6E', 'Talent Matchmakers', 'https://jobs.talentmatchmakers.co/jobs', NULL, NULL, NULL, NULL),
('3FB18A4B-FB1A-193E-48F7-B55C66A3EA2C', 'Tora', 'https://tora.com/careers/', NULL, NULL, NULL, NULL),
('173840F9-0597-D37A-6E1A-9AC394298062', 'Tradeshift', 'https://tradeshift.com/jobs/#open-positions', NULL, NULL, NULL, NULL),
('0AEE4069-4603-90BB-4BF3-0ED618ED0BE0', 'Transart', 'https://www.transart.ro/cariere/', NULL, NULL, NULL, NULL),
('49436BCA-D75E-5C1F-38F2-B6E2D96FE025', 'Ulma Packaging', 'https://www.ulmapackaging.ro/companie/cariere-in-cadrul-ulma-packaging', NULL, NULL, NULL, NULL),
('40342791-59DF-7707-652A-8D0C32E579ED', 'UTILBEN', 'https://www.utilben.ro/careers', NULL, NULL, NULL, NULL),
('24F5E05E-43C2-21B5-ACAA-2CB73B0CE125', 'VMware', 'https://careers.vmware.com/main/jobs?page=1', NULL, NULL, NULL, NULL),
('0BCDBF7A-0DC1-526E-66D2-B5A732B417B4', 'autogrand', 'https://www.autogrand.ro/companie', NULL, NULL, NULL, NULL),
('18AC5E9F-BEF0-0E0F-7992-7D5CC9C4EB5D', 'alignt.EE', 'https://www.alight.ro/Careers.html', NULL, NULL, NULL, NULL),
('114AC4F4-85D8-5B49-CFFE-6566F4BDE040', 'Wirtek', 'https://www.wirtek.com/careers', NULL, NULL, NULL, NULL),
('AB887480-B656-2599-4001-EF9E966B9C59', 'Yardi', 'https://careers.yardiromania.ro/careers-at-yardi/', NULL, NULL, NULL, NULL),
('DDA4FD6D-FD07-D2A3-DA63-05FC3466DBC7', 'Yonder', 'https://tss-yonder.com/careers/career-opportunities/open-positions-yonder/', NULL, NULL, NULL, NULL),
('68A0D3DA-BFFD-A57F-C1D7-442819AD7D79', 'redbee software', 'https://www.facebook.com/redbee.software/jobs/', NULL, NULL, NULL, NULL),
('5089B5D8-00F4-DB77-1ED3-9B7F85CF5DEE', 'ICD web', 'https://icdweb.eu/', NULL, NULL, NULL, NULL),
('127DD8C8-57E0-BACA-C369-42662CCEAF2D', 'SCC erbasu', 'https://www.erbasu.ro/cariere-erbasu/', NULL, NULL, NULL, NULL),
('289941E7-09AF-8414-3DC0-C42302103D2E', 'bitstone', 'https://bitstone.com/careers/', NULL, NULL, NULL, NULL),
('8752AAA0-1E23-C34D-4CC9-967DDE05F095', 'Selgros', 'https://www.selgros.ro/cariere', NULL, NULL, NULL, NULL),
('1B44993A-EDB9-87C3-65FC-B66DD06758CB', 'UAC', 'https://www.universalalloy.com/UAC-Employment-Opportunities.html', NULL, NULL, NULL, NULL),
('70B6B88C-42FF-8E71-9B25-7E5C7DE92FA2', 'TRANS - INTERNATIONAL SPED N.C.A.', 'https://transinternationalsped.com/angajari/', NULL, NULL, NULL, NULL),
('2101FCD6-AC22-DC31-15AB-5C531264FAF8', 'Auchan', 'https://www.auchan.ro/store/home', NULL, NULL, NULL, NULL),
('6A9957A4-3B54-A040-087C-113366ABD72B', 'Yload', 'https://yload.ro/cariera/', NULL, NULL, NULL, NULL),
('89EA4D4C-C118-B1B2-09EA-6193B361F4A4', 'QIAGEN', 'https://www.qiagen.com/us/careers/jobs/index', NULL, NULL, NULL, NULL),
('470AA17D-5E37-FC90-279D-39263409D21B', 'Ascom', 'https://www.ascom.com/careers/vacancies.html', NULL, NULL, NULL, NULL),
('8DEBCE27-98B9-681C-99C6-78FC5949E93E', 'Qubiz', 'https://www.qubiz.com/careers/jobs', NULL, NULL, NULL, NULL),
('C268BED8-0091-2485-A358-D9B224C0AE30', '8x8', 'https://www.8x8.com/careers', NULL, NULL, NULL, NULL),
('BE3F5BA4-C862-06CF-51EF-C2AFD4DDEC1F', 'Ambient', 'https://www.ambient.ro/companie-cariere', NULL, NULL, NULL, NULL),
('59C67D40-0A38-1C6A-D9AD-90FC9493AD4F', 'Denvest', 'https://devnest.ro/careers', NULL, NULL, NULL, NULL),
('235BE487-9DA9-11EC-6B1F-14D56E507ADC', 'Bosch', 'https://careers.smartrecruiters.com/BoschGroup/romania', NULL, NULL, NULL, NULL),
('E3FB7538-E592-5CC8-F891-C0755FE9BB17', 'NTT Data', 'https://www.nttdata.com/global/en/careers', NULL, NULL, NULL, NULL),
('FB72E79D-D05D-34B6-79D3-5E8A40B3DBE8', 'Oncos', 'https://www.oncos.ro/angajari/', NULL, NULL, NULL, NULL),
('4B5D85E2-7309-691F-D1BE-4A8EF27965C8', 'Freshbyte', 'https://freshbyteinc.com/careers/', NULL, NULL, NULL, NULL),
('6FF0A07B-2C9D-EA84-257B-A4600072C01F', 'BetterQA', 'https://betterqa.co/we-are-hiring/', NULL, NULL, NULL, NULL),
('5A95021B-C9B8-1E39-A366-BD63F7FB1CCF', 'Ubisoft', ' https://www.ubisoft.com/en-US/careers/search.aspx?location=bucharest', NULL, NULL, NULL, NULL),
('AA6FB726-EED2-6A85-A3D5-BF07C976DED9', 'Xoomworks', 'https://www.xoomworks.com/jobs-in-romania/#s=1', NULL, NULL, NULL, NULL),
('D61CEAEA-0BAF-2B19-A608-9FF126D4FB54', 'Cognizant Softvision', 'https://www.cognizantsoftvision.com/careers/', NULL, NULL, NULL, NULL),
('B19A7257-A0B0-FBE8-FD96-5D8DAD81D768', 'SOFTWIN', 'https://www.bestjobs.eu/ro/firme/softwin', NULL, NULL, NULL, NULL),
('D6D7E2CC-A787-BDB0-BAD3-EA20E5234A50', 'IBM', 'https://www.ibm.com/ro-en/employment/#jobs', NULL, NULL, NULL, NULL),
('CC3B5C1D-421F-CC6E-5504-70E8A41681FC', 'Global App Testing', 'https://apply.workable.com/global-app-testing/', NULL, NULL, NULL, NULL),
('F453E83C-6AC9-56CD-55A8-E37B4EB0C92C', 'Comply Advantage', 'https://boards.greenhouse.io/complyadvantage?gh_jid=4613109002', NULL, NULL, NULL, NULL),
('2C138B87-5E64-7364-BD9E-57C052F840CC', 'Bitdefender', 'https://www.bitdefender.com/company/job-opportunities/', NULL, NULL, NULL, NULL),
('A5A177BC-04D4-DE81-659B-2C38F73B3D94', 'Basware', 'https://careers.basware.com/', NULL, NULL, NULL, NULL),
('F7B9732D-2A0F-5F6B-1ECD-149005D1D0A4', 'WebBeds', 'https://www.webbeds.com/careers/', NULL, NULL, NULL, NULL),
('E6745582-8CA0-3F8F-34C0-0FBD590F7E62', 'ACI Worldwide', 'https://ebwg.fa.us2.oraclecloud.com/hcmUI/CandidateExperience/en/sites/CX/requisitions?location=Romania&locationId=300000000300344&locationLevel=country&mode=location', NULL, NULL, NULL, NULL),
('676E848C-7EA4-EDC3-2BE7-2185E58CF9FA', 'OSF Global Services', 'https://osf.digital/careers/jobs#location=Romania', NULL, NULL, NULL, NULL),
('42D561CF-A837-D6E7-D7FF-6C592C9E46E0', 'Accenture', 'https://www.accenture.com/ro-en/careers/jobsearch?jk=&sb=1&pg=1&is_rj=0', NULL, NULL, NULL, NULL),
('CBC032EF-6200-4ABA-5C6D-5DEEB48E54C3', 'Magneti Marelli', 'https://www.magnetimarelli.com/careers/job-search.php', NULL, NULL, NULL, NULL),
('244E2F2B-EEA0-4BB6-FF65-9FE16C5C88EE', 'Signant Health', 'https://careers-signanthealth.icims.com/jobs/search?ics_geolocation=romania', NULL, NULL, NULL, NULL),
('7C151756-DD91-9C45-216B-CBBA223791DD', 'ARRK Research & Development', 'https://www.arrkeurope.com/jobs-career/current-job-offers/', NULL, NULL, NULL, NULL),
('737EDC47-B1E7-71C8-EE9A-2C8187DE6010', 'Emerson', 'https://www.emerson.com/en-us/careers', NULL, NULL, NULL, NULL),
('02729916-0273-95B4-FA87-2BDADBEE769E', 'ddroidd', 'https://ddroidd.com/careers', NULL, NULL, NULL, NULL),
('D7B77BEB-991D-61CC-2DCC-11EAC2010BCE', 'Inform Media Press', 'https://informmedia.ro/jobs/', NULL, NULL, NULL, NULL),
('83A30631-533E-4C93-DCA1-82CB79C0BF4B', 'Romprofix', 'https://www.romprofix.ro/pagini/cariere', NULL, NULL, NULL, NULL),
('96BE57C2-A0B9-9A4B-446B-16BEB5F9B225', 'Cloudflare', 'https://www.cloudflare.com/careers/jobs/', NULL, NULL, NULL, NULL),
('75665162-72A5-F508-AC26-4057DB325F86', 'E.ON', 'https://jobs.eon.com/romania/go/Toate-joburile-din-Romania/3727401/?utm_source=pagina-cariere-ro', NULL, NULL, NULL, NULL),
('11078EEE-FB5D-E6FD-7CA5-BF6B15FE8DA4', 'Arobs', 'https://careers-arobs.icims.com/jobs/search?ss=1&hashed=-435624355&mobile=false&width=1367&height=500&bga=true&needsRedirect=false&jan1offset=120&jun1offset=180', NULL, NULL, NULL, NULL),
('950DC6BF-3942-B42D-A408-4579354FEB59', 'Cora', 'https://www.cora.ro/noutati-cora/cora-corporate/cariera', NULL, NULL, NULL, NULL),
('A3A6899D-10C9-CE37-FDF3-25EA5C55A5DF', 'Mega Image', 'https://www.mega-image.ro/cariera-ta-la-mega', NULL, NULL, NULL, NULL),
('C4C319FA-7043-021C-2480-31C00C6CA2AA', 'Lidl', 'https://cariere.lidl.ro/?_ga=2.108906626.1480394683.1608917022-2088159251.1608917022&_gac=1.54490842.1608917022.Cj0KCQiAuJb_BRDJARIsAKkycUlu3ys3BNckze3H8ABaZX_43ViWGaUt3Po9yrV0L1hs3a-S1rLPFY0aAhwEEALw_wcB', NULL, NULL, NULL, NULL),
('A5998B63-E45E-EB5F-DA5F-603369123E38', 'Carrefour', 'https://carrefour.ro/corporate/cariere', NULL, NULL, NULL, NULL),
('7BA806E5-2D23-5F4D-7C5E-47D1B0609457', 'Metro', 'https://www.metro.ro/cariere', NULL, NULL, NULL, NULL),
('BB1D40C6-430D-2C28-4500-4B3F7839F8FC', 'Dedeman', 'https://recrutare.dedeman.ro/posturi-disponibile.php', NULL, NULL, NULL, NULL),
('E256F817-8DB0-E3DC-A0A2-B60076CDDDA0', 'Hornbach', 'https://jobs.hornbach.com/Romania/?locale=ro_RO', NULL, NULL, NULL, NULL),
('68A6AEB8-1926-DB53-4E62-88A5382423D7', 'Betfair', 'https://apply.betfairromania.ro/', NULL, NULL, NULL, NULL),
('A5EE2D5F-E5E3-D4D7-FBF0-1F904B8AA884', 'Homelux', 'https://www.homelux.ro/cariere/', NULL, NULL, NULL, NULL),
('23CA889A-DC98-EA05-F9ED-4B7C847C7468', 'Brico Depot', 'https://www.bricodepot.ro/cariere/joburi-disponibile/', NULL, NULL, NULL, NULL),
('7DC7F218-B92A-8BBB-E31B-CD8DCC8D6F12', 'Ikea', 'https://ro-jobs.about.ikea.com/c%C4%83utare-posturi-vacante?acm=ALL&alrpm=798549&ascf=[%7B%22key%22:%22ALL%22,%22value%22:%22%22%7D]', NULL, NULL, NULL, NULL),
('6C90937E-8D25-B89F-A3CA-080D48FB0D73', 'Penny', 'https://cariere.penny.ro/', NULL, NULL, NULL, NULL),
('7CD7788A-5868-EDDF-8E0F-344B9F9D0B21', 'Decathlon', 'https://cariere-decathlon.ro/', NULL, NULL, NULL, NULL),
('6E9E1A2D-7DF7-9167-924A-8E9F5B03E9E6', 'Perpetuum', 'https://www.perpetuum.ro/per-cariere.html/', NULL, NULL, NULL, NULL),
('C6339AE6-0FB2-9B00-B8ED-A0F0394B215E', 'Multicom', 'https://multicomgroup.ro/cariera/', NULL, NULL, NULL, NULL),
('8DBD15F2-C367-D102-1074-78629C3CDAEC', 'Brick', 'https://brick-romania.ro/main/cariere', NULL, NULL, NULL, NULL),
('D04849F6-29E0-EB5D-5FA7-D997C6682EE7', 'dm', 'https://www.dm-drogeriemarkt.ro/cariera/posturi-disponibile-la-dm', NULL, NULL, NULL, NULL),
('5190554D-ACF7-8D73-1A9F-4264F9A8861D', 'OTTER Distribution', 'https://www.otter.ro/cariere', NULL, NULL, NULL, NULL),
('C28284EC-0ABF-7CA0-8BF2-A0260BBC034F', 'Blistein', 'https://bilstein.ro/cariere/', NULL, NULL, NULL, NULL),
('FA8D8812-88E1-F5FA-52DC-48121B9445D6', 'Vodafone', 'https://careers.vodafone.com/search/?createNewAlert=false&q=Romania', NULL, NULL, NULL, NULL),
('EE590EDD-2178-F960-34E7-05C54FDEABBD', 'GreenGlobal', 'https://www.ejobs.ro/company/sc-green-global-future-srl/231702', NULL, NULL, NULL, NULL),
('561BA977-869D-964E-C588-27121409317B', 'Stefanini', 'https://www.ejobs.ro/company/stefanini-romania-srl/6425', NULL, NULL, NULL, NULL),
('7690A2D1-AD92-21F1-7B33-D1075CC529D1', 'Fortech', 'https://www.fortech.ro/careers/', NULL, NULL, NULL, NULL),
('27D841AC-EC4D-1029-955B-9E1D0D064E6E', 'Raiffeisen Bank', 'https://www.raiffeisen.ro/despre-noi/cariere/', NULL, NULL, NULL, NULL),
('192B98D6-6149-C364-6FAB-5AE2666A44F7', 'Sales Consulting ', 'https://www.salesconsulting.ro/ro/oferte/5-oferte-locuri-de-munca/', NULL, NULL, NULL, NULL),
('614F3175-5C81-5892-9AC4-70064FCC1479', 'Garmin', 'https://www.garmin.com/ro-RO/careers/', NULL, NULL, NULL, NULL),
('59F45AE4-10CB-04D8-0FFA-219BE81E07E9', 'Axon Soft', 'https://axon-soft.com/careers/', NULL, NULL, NULL, NULL),
('25AD3B4F-6C66-FF0A-9434-602B58E0E6BC', 'Tiriac Auto', 'https://www.tiriacauto.ro/ro/cariere', NULL, NULL, NULL, NULL),
('26E9C343-56D2-B76C-06B2-D5F4764B9C03', 'Tapptitude', 'https://tapptitude.com/careers/', NULL, NULL, NULL, NULL),
('243082B0-38C5-B6CA-6D15-A1232FC03C22', 'Blitz', 'https://www.blitz.ro/cariere-blitz', NULL, NULL, NULL, NULL),
('75E931C7-D487-7F7E-B552-427BCC314723', 'Zenitech', 'https://zenitech.co.uk/join-the-community/', NULL, NULL, NULL, NULL),
('5223915F-A9D1-137A-296E-BFC2CA96C228', 'Wolfpack', 'https://www.wolfpack-digital.com/jobs', NULL, NULL, NULL, NULL),
('24782717-CCFB-47B6-34D1-D96630F6DF29', 'X2 Mobile', 'https://my.hirehive.io/x2-mobile', NULL, NULL, NULL, NULL),
('D755E973-E488-0497-ECE2-5DAEF70CFB53', 'Siemens', 'https://new.siemens.com/global/en/company/jobs/search-careers.html', NULL, NULL, NULL, NULL),
('A6A6D67D-8891-8A9D-01AA-CF25404C07E6', 'NetMatch', 'https://www.netmatch.nl/Career', NULL, NULL, NULL, NULL),
('42F96D35-906B-D310-C4CD-64823C5CD1CB', 'EY', 'https://careers.eyromania.ro/', NULL, NULL, NULL, NULL),
('63CB7018-8F2B-36B7-B2A7-7E802E991F56', 'Aegon', 'https://careers.aegon.com/en/global/home/', NULL, NULL, NULL, NULL),
('A48E844D-C438-9443-5BE2-33C0D4D0825C', 'Darwin', 'https://www.darwin.com/careers/', NULL, NULL, NULL, NULL),
('E434AFA1-8F94-4F8A-04D0-9A84418C9472', 'Adecco', 'https://careers.adeccogroup.com/', NULL, NULL, NULL, NULL),
('B8BC03DA-7BFF-A44B-55A1-31A7537F0C93', 'Evozon', 'https://www.evozon.com/careers/job-opportunities', NULL, NULL, NULL, NULL),
('DD70B884-9044-3FED-F047-0A8246AE28B3', 'epam', 'https://www.epam.com/careers', NULL, NULL, NULL, NULL),
('C125270B-CA9D-82E1-0B28-2508B377028A', 'Gi Group', 'https://ro.gigroup.com/', NULL, NULL, NULL, NULL),
('AAA7CC89-9E01-505D-34AE-2FAEF0D3031E', 'proxify', 'https://career.proxify.io/jobs', NULL, NULL, NULL, NULL),
('D002ED43-5C82-83C0-3C28-17F6C57F7351', '24SEVEN3D', 'https://www.24seven3d.com/jobs.html', NULL, NULL, NULL, NULL),
('3142EA2D-9824-0174-3CD8-8DE0483E13C3', 'Altran', 'https://www.altran.com/us/en/careers/', NULL, NULL, NULL, NULL),
('83E75648-424F-4F2D-B63B-FA63D5A6EAE6', 'AG Prime', 'https://www.ag-prime.com/jobs', NULL, NULL, NULL, NULL),
('D742A4C3-F91A-1F76-BC99-DEB59DF46229', 'Agilio', 'https://www.agilio.eu/#/careers', NULL, NULL, NULL, NULL),
('C9B4C8A3-12AF-2D82-5EFA-2A931A4DC0D7', 'Banca Transilvania', 'https://beta.bancatransilvania.ro/cariere', NULL, NULL, NULL, NULL),
('A9E2794D-F98C-78B3-2F2A-45EDD8CFF5C8', 'Barandi Solutions', 'https://www.bestjobs.eu/en/companies/barandi-solutions-3', NULL, NULL, NULL, NULL),
('7A2CB470-96D5-35F5-7CDC-031A34A81F35', 'Code Spring ', 'https://www.codespring.ro/career/current-opportunities', NULL, NULL, NULL, NULL),
('D1CA7E74-5915-3DA1-3D8E-9464E4BF22F2', 'Enetix', 'https://enetix.ro/ro/', NULL, NULL, NULL, NULL),
('EDCB9F9E-45CA-6A20-8BE2-04C9CCDBACBD', 'Espressoft', 'https://espressoft.ro/#about', NULL, NULL, NULL, NULL),
('4A258075-82DE-86C8-8180-255AAE9670D8', 'Evoline', 'https://www.evoline.com/en/company/careers/', NULL, NULL, NULL, NULL),
('8792DE25-4B41-1383-6237-CEF87539D97C', 'Gama Software', 'https://gamasoftware.ro/', NULL, NULL, NULL, NULL),
('27345EFB-09C7-4CC5-1960-53C439571C66', 'Halcyon Mobile', 'https://halcyonmobile.com/careers', NULL, NULL, NULL, NULL),
('AD500EEA-CD1B-C898-7B3D-D986B4C19F83', 'HP', 'https://jobs.hp.com/en-us/?prefilters=none&CloudSearchLocation=none&CloudSearchValue=none', NULL, NULL, NULL, NULL),
('04FB2BF6-F086-82DF-F90B-2F54099B32BF', 'Idea Studios', 'https://ideastudios.ro/careers/', NULL, NULL, NULL, NULL),
('F38DDFEC-D8C0-E3D2-F24C-80D0A0416BC7', 'Ikon Soft', 'http://www.ikon-software.com/careers/', NULL, NULL, NULL, NULL),
('3A5D513C-7D40-EE08-482F-0A7BE2E51C46', 'Indeco Soft', 'https://indecosoft.ro/site/jobs/', NULL, NULL, NULL, NULL),
('2CCC5C31-B31B-20A6-1106-E34C80DB5765', 'Nagarro', 'https://nagarro.taleo.net/careersection/corporate/jobsearch.ftl?f=LOCATION(2215010148)', NULL, NULL, NULL, NULL),
('B3FFB580-F65F-A681-6A7A-065AC3D86ACA', 'Vitacom', 'https://www.vitacom.ro/Pagini/cariere-posturi-vacante', NULL, NULL, NULL, NULL),
('62AE75A3-85D5-C35D-C879-EBFBAEA93251', 'MHP', 'https://www.mhp.com/en/career', NULL, NULL, NULL, NULL),
('E6EBCA01-C832-B1BA-C2BA-DCB218E7A37F', 'msg systems', 'https://www.msg-systems.ro/cariere', NULL, NULL, NULL, NULL),
('1A67A4A1-B5DC-9B3E-CD22-C05758B26D29', 'Napoca Software', 'https://www.napocasoftware.ro/', NULL, NULL, NULL, NULL),
('0C923067-8D5A-6F81-FE9A-EE6CA87D9502', 'Pixel Data', 'http://pixeldata.ro/home/medical-software/cariere.html', NULL, NULL, NULL, NULL),
('08A3106B-5BB0-F700-912F-88F84738DC01', 'Riverbed', 'https://www.riverbed.com/gb/about/careers/', NULL, NULL, NULL, NULL),
('0427E603-8DD3-26F5-A947-A0A81D8FCE23', 'Luminos Labs ', 'https://www.luminoslabs.com/about#workwithus', NULL, NULL, NULL, NULL),
('F88F2956-3230-FE25-8DB5-BA98273BA419', 'Tecknoworks', 'https://tecknoworks.com/careers/', NULL, NULL, NULL, NULL),
('5931334D-70ED-9081-6B08-36ADD3A802F7', 'Wayfare', 'https://wayfare.ro/careers/', NULL, NULL, NULL, NULL),
('1C690F57-35DA-2E37-DF14-B9A7F23F6BE8', 'Zipper', 'https://ezipper.ro/cariere/', NULL, NULL, NULL, NULL),
('DF2BD47B-ECC9-89CD-1D69-66F70A75E33D', 'Panemar', 'https://panemar.ro/angajari', NULL, NULL, NULL, NULL),
('90D4B8D7-4B39-C281-0A03-82E0DF9785BC', 'La Casa', 'https://www.lacasapane.ro/joburi', NULL, NULL, NULL, NULL),
('AC9D1DF1-874B-FD21-8DEF-662179C8638C', 'BCR', 'https://erstegroup-careers.com/bcr/search/?createNewAlert=false&q&locationsearch&locale=ro_RO', NULL, NULL, NULL, NULL),
('50AEE0BF-7152-A1F4-845C-3F5FD67E405C', 'BNR', 'https://www.bnr.ro/Posturi-vacante-11652-Mobile.aspx', NULL, NULL, NULL, NULL),
('89D7F715-7F08-7CD4-ECF2-5D5680AB7FC0', 'Alpha Bank', 'https://www.alphabank.ro/despre-noi/cariere', NULL, NULL, NULL, NULL),
('9EAD48AC-6A6E-7614-8B5B-A55354C7D8E1', 'CEC Bank', 'https://www.cec.ro/cariere', NULL, NULL, NULL, NULL),
('AFF90803-B94B-DC1A-FB39-82BF4F83D2F3', 'OTP Bank', 'https://cariere.otpbank.ro/Posturi', NULL, NULL, NULL, NULL),
('A8CC7A5F-D90D-21EF-843A-B61CB0960D5D', 'Patria Bank', 'https://www.patriabank.ro/despre-patria/cariere', NULL, NULL, NULL, NULL),
('21A08F57-5934-7259-2300-D5415A27AFB7', 'Porsche Bank', 'https://www.porschebank.ro/ro/despre-noi/cariere/pozitii-deschise', NULL, NULL, NULL, NULL),
('43FFB91C-B4C2-AE15-4A53-F0ACE2F4D3C8', 'UniCredit Bank', 'https://www.unicredit.ro/ro/institutional/Cariere/lucreaza-alaturi-de-noi.html', NULL, NULL, NULL, NULL),
('2706A654-4449-8F8F-E969-0EF712389948', 'Telekom Banking', 'https://www.telekombanking.ro/cariere', NULL, NULL, NULL, NULL),
('F7F8529A-17AF-249B-58F8-4C9DDC386B48', 'Kaufland', 'https://jobs.kaufland.com/Romania/search/?q=&locationsearch=&locale=ro_RO', NULL, NULL, NULL, NULL),
('07B67BEE-83B5-788B-39FC-58C6B0A3D900', 'Rompetrol', 'https://careers.kmginternational.com/go/Romania-EN/3778001/', NULL, NULL, NULL, NULL),
('E9CBCB7F-E54C-0B73-CE88-20CD0CA7322F', 'MOL Rom?nia', 'https://molgroup.taleo.net/careersection/external/jobsearch.ftl?lang=en&location=4505100397', NULL, NULL, NULL, NULL),
('C6DB1C83-2283-E7E2-F8DC-69CD54C5915A', 'Pralina', 'https://www.pralina.ro/despre-noi/job-uri-vacante', NULL, NULL, NULL, NULL),
('05CEB950-6E78-42FA-D552-733E76A7DDD8', 'Adidas', 'https://www.bestjobs.eu/ro/firme/adro#activeJobs', NULL, NULL, NULL, NULL),
('4609448D-5DFB-DB45-D468-F4EE67D49713', 'Altex', 'https://altex.ro/cariere/', NULL, NULL, NULL, NULL),
('62EAA886-46A7-91F4-5AA9-E633073CC5D4', 'Carturesti', 'https://carturesti.ro/info/joburi', NULL, NULL, NULL, NULL),
('B58394F4-2F95-D2D9-CE56-CA2EC7B90131', 'Cinema City', 'https://www.cinemacity.ro/static/ro/ro/work-with-us', NULL, NULL, NULL, NULL),
('CD79F637-6AB1-DA1F-F244-A3C06E902E1C', 'Cupio', 'https://www.cupio.ro/cariere', NULL, NULL, NULL, NULL),
('3F44DBB2-AA9F-2E1F-312B-BA7D0F7E7AE6', 'Pandora', 'https://pandoragroup.com/careers/vacancies/europe/romania', NULL, NULL, NULL, NULL),
('0B283C82-6A49-5B7A-1B8D-9BB7FBAA4DF2', 'electrica', 'https://www.electrica.ro/cariere/', NULL, NULL, NULL, NULL),
('8819613D-2A32-8297-D829-A720C4DE6F27', 'alight.EE', 'https://www.alight.ro/Careers.html', NULL, NULL, NULL, NULL),
('38C81B39-3020-BC35-3AFC-CABD6F9BE903', 'vohkus', 'https://www.vohkus.ro/careers', NULL, NULL, NULL, NULL),
('B875013A-2320-0D23-C7A8-F0C357951FF3', 'take off labs', 'https://www.takeofflabs.com/careers/', NULL, NULL, NULL, NULL),
('0FF95B20-D82D-548D-9185-63C1CF671A60', 'Google', 'https://careers.google.com/jobs/results/', NULL, NULL, NULL, NULL),
('362AF917-962E-D775-C061-1EF50F61F1DD', 'Hella', 'https://hella.csod.com/ux/ats/careersite/3/home?c=hella&lang=en-US', NULL, NULL, NULL, NULL),
('C3376DC5-4287-F2F9-316D-7789B0C462CA', 'JTI', 'https://www.jti.com/careers', NULL, NULL, NULL, NULL),
('3401218D-D1A8-6068-5F3E-662A39188609', 'UIPath', 'https://www.uipath.com/company/careers', NULL, NULL, NULL, NULL),
('F434784A-6400-9EBE-90CE-B0B6B1281858', 'Oracle', 'https://www.oracle.com/ro/corporate/careers/', NULL, NULL, NULL, NULL),
('2155F445-3CB0-8F9D-3537-F1F84FA3E3EC', 'Microsoft', 'https://careers.microsoft.com/us/en', NULL, NULL, NULL, NULL),
('F96DE6FD-4929-AF96-F639-5EF24572FFCD', 'Metalica', 'https://www.ejobs.ro/company/sc-metalica-sa/250707?setlang=en_&cid=250707&cname=sc-metalica-sa&cdata=', NULL, NULL, NULL, NULL),
('BFC35C97-84EA-2EDF-14BA-006D522969C5', 'EON', 'https://www.eon.ro/cariere', 'aaf14e57-3109-4e4d-9666-671aec0a68ef', 'sebi@shaqodoon.ro', '76a2173be6393254e72ffa4d6df1030a', NULL),
('E3959646-B37C-793F-B2FA-54E05024A9F0', 'tremend', 'https://careers.tremend.com/', NULL, NULL, NULL, NULL),
('CD1B595E-BDAC-0104-B469-BBB9953D253C', 'playtika', 'https://www.playtika.com/careers/', NULL, NULL, NULL, NULL),
('54B86470-3E5A-67A9-31EE-4B2B0966A8C5', 'National Instruments', 'https://pef.fa.us1.oraclecloud.com/hcmUI/CandidateExperience/en/sites/CX/requisitions', NULL, NULL, NULL, NULL),
('F4A8A444-8D97-1735-EDC8-F74B06784F83', 'Porsche Engineering', 'https://jobs.porsche.com/index.php?ac=search_result&search_criterion_division%5B%5D=6268', NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `company` (`company`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

