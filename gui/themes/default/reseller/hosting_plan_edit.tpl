{extends file="common/layout.tpl"}

{block name=TR_PAGE_TITLE}{$TR_PAGE_TITLE}{/block}

{block name=CUSTOM_JS}
<script type="text/javascript">
	/* <![CDATA[ */
	$(document).ready(function(){
		// Tooltips - begin
		$('#hp_tos_help').EasySCPtooltips({ msg:"{$TR_TOS_NOTE}"});
		// Tooltips - end
	});
	/* ]]> */
</script>
{/block}

{block name=CONTENT_HEADER}{$TR_EDIT_HOSTING_PLAN}{/block}

{block name=BREADCRUMP}
	<li><a href="/reseller/hosting_plan.php">{$TR_MENU_HOSTING_PLANS}</a></li>
	<li><a>{$TR_EDIT_HOSTING_PLAN}</a></li>
{/block}

{block name=BODY}
<h2 class="doc"><span>{$TR_EDIT_HOSTING_PLAN}</span></h2>
<form action="/reseller/hosting_plan_edit.php" method="post" id="admin_hosting_plan_edit">
	<table>
		<tr>
			<td>{$TR_TEMPLATE_NAME}</td>
			<td><input type="text" name="hp_name" id="hp_name" value="{$HP_NAME_VALUE}" /></td>
		</tr>
		<tr>
			<td>{$TR_TEMPLATE_DESCRIPTON}</td>
			<td><textarea name="hp_description" id="hp_description" cols="40" rows="8">{$HP_DESCRIPTION_VALUE}</textarea></td>
		</tr>
		<tr>
			<td>{$TR_MAX_SUBDOMAINS}</td>
			<td><input type="text" name="hp_sub" id="hp_sub" value="{$TR_MAX_SUB_LIMITS}" /></td>
		</tr>
		<tr>
			<td>{$TR_MAX_ALIASES}</td>
			<td><input type="text" name="hp_als" id="hp_als" value="{$TR_MAX_ALS_VALUES}" /></td>
		</tr>
		<tr>
			<td>{$TR_MAX_MAILACCOUNTS}</td>
			<td><input type="text" name="hp_mail" id="hp_mail" value="{$HP_MAIL_VALUE}" /></td>
		</tr>
		<tr>
			<td>{$TR_MAX_FTP}</td>
			<td><input type="text" name="hp_ftp" id="hp_ftp" value="{$HP_FTP_VALUE}" /></td>
		</tr>
		<tr>
			<td>{$TR_MAX_SQL}</td>
			<td><input type="text" name="hp_sql_db" id="hp_sql_db" value="{$HP_SQL_DB_VALUE}" /></td>
		</tr>
		<tr>
			<td>{$TR_MAX_SQL_USERS}</td>
			<td><input type="text" name="hp_sql_user" id="hp_sql_user" value="{$HP_SQL_USER_VALUE}" /></td>
		</tr>
		<tr>
			<td>{$TR_MAX_TRAFFIC}</td>
			<td><input type="text" name="hp_traff" id="hp_traff" value="{$HP_TRAFF_VALUE}" /></td>
		</tr>
		<tr>
			<td>{$TR_DISK_LIMIT}</td>
			<td><input type="text" name="hp_disk" id="hp_disk" value="{$HP_DISK_VALUE}" /></td>
		</tr>
		<tr>
			<td>{$TR_PHP}</td>
			<td>
				<input type="radio" name="php" id="php_yes" value="_yes_" {$TR_PHP_YES} />&nbsp;{$TR_YES}
				<input type="radio" name="php" id="php_no" value="_no_" {$TR_PHP_NO} />&nbsp;{$TR_NO}
			</td>
		</tr>
		<tr>
			<td>{$TR_PHP_EDIT}</td>
			<td>
				<input type="radio" name="php_edit" id="php_edit_yes" value="_yes_" {$TR_PHPEY} />&nbsp;{$TR_YES}
				<input type="radio" name="php_edit" id="php_edit_no" value="_no_" {$TR_PHPEN} />&nbsp;{$TR_NO}
			</td>
		</tr>
		<tr>
			<td>{$TR_CGI}</td>
			<td>
				<input type="radio" name="cgi" id="cgi_yes" value="_yes_" {$TR_CGI_YES} />&nbsp;{$TR_YES}
				<input type="radio" name="cgi" id="cgi_no" value="_no_" {$TR_CGI_NO} />&nbsp;{$TR_NO}
			</td>
		</tr>
		<tr>
			<td>{$TR_SSL}</td>
			<td>
				<input type="radio" name="ssl" id="ssl_yes" value="_yes_" {$TR_SSL_YES} />&nbsp;{$TR_YES}
				<input type="radio" name="ssl" id="ssl_no" value="_no_" {$TR_SSL_NO} />&nbsp;{$TR_NO}
			</td>
		</tr>
		<tr>
			<td>{$TR_DNS}</td>
			<td>
				<input type="radio" name="dns" id="dns_yes" value="_yes_" {$TR_DNS_YES} />&nbsp;{$TR_YES}
				<input type="radio" name="dns" id="dns_no" value="_no_" {$TR_DNS_NO} />&nbsp;{$TR_NO}
			</td>
		</tr>
		<tr>
			<td>{$TR_BACKUP}</td>
			<td>
				<input type="radio" name="backup" id="backup_dmn" value="_dmn_" {$VL_BACKUPD} />&nbsp;{$TR_BACKUP_DOMAIN}
				<input type="radio" name="backup" id="backup_sql" value="_sql_" {$VL_BACKUPS} />&nbsp;{$TR_BACKUP_SQL}
				<input type="radio" name="backup" id="backup_full" value="_full_" {$VL_BACKUPF} />&nbsp;{$TR_BACKUP_FULL}
				<input type="radio" name="backup" id="backup_none" value="_no_" {$VL_BACKUPN} />&nbsp;{$TR_BACKUP_NO}
			</td>
		</tr>
		<tr>
			<td>{$TR_BACKUP_COUNT}</td>
			<td>
				<input type="radio" name="countbackup" id="countbackup_yes" value="_yes_" {$TR_BACKUPCOUNT_YES} />&nbsp;{$TR_YES}
				<input type="radio" name="countbackup" id="countbackup_no" value="_no_" {$TR_BACKUPCOUNT_NO} />&nbsp;{$TR_NO}
			</td>
		</tr>
	</table>
	<div>&nbsp;</div>
	<fieldset>
		<legend>{$TR_BILLING_PROPS}</legend>
		<table>
			<tr>
				<td>{$TR_PRICE}</td>
				<td><input type="text" name="hp_price" id="hp_price" value="{$HP_PRICE}" /></td>
			</tr>
			<tr>
				<td>{$TR_SETUP_FEE}</td>
				<td><input type="text" name="hp_setupfee" id="hp_setupfee" value="{$HP_SETUPFEE}" /></td>
			</tr>
			<tr>
				<td>{$TR_VALUE}</td>
				<td><input type="text" name="hp_value" id="hp_value" value="{$HP_VALUE}" /> <span class="legend">{$TR_EXAMPLE}</span></td>
			</tr>
			<tr>
				<td>{$TR_PAYMENT}</td>
				<td><input type="text" name="hp_payment" id="hp_payment" value="{$HP_PAYMENT}" /></td>
			</tr>
			<tr>
				<td>{$TR_STATUS}</td>
				<td>
					<input type="radio" name="status" id="status_yes" value="1" {$TR_STATUS_YES} />&nbsp;{$TR_YES}
					<input type="radio" name="status" id="status_no" value="0" {$TR_STATUS_NO} />&nbsp;{$TR_NO}
				</td>
			</tr>
		</table>
	</fieldset>
	<!-- TOS -->
	<fieldset>
		<legend>{$TR_TOS_PROPS} <span id="hp_tos_help" class="icon i_help">&nbsp;</span></legend>
		<table>
			<tr>
				<td>{$TR_TOS_DESCRIPTION}</td>
				<td><textarea name="hp_tos" id="hp_tos" cols="70" rows="8">{$HP_TOS_VALUE}</textarea></td>
			</tr>

		</table>
	</fieldset>
	<!-- TOS END -->
	<div class="buttons">
		<input type="hidden" name="uaction" value="edit_plan" />
		<input type="submit" name="Submit" value="{$TR_EDIT_HOSTING_PLAN}" />
	</div>
</form>
{/block}