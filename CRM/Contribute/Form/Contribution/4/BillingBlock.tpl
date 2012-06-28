{*
 +--------------------------------------------------------------------+
 | CiviCRM version 4.1                                                |
 +--------------------------------------------------------------------+
 | Copyright CiviCRM LLC (c) 2004-2011                                |
 +--------------------------------------------------------------------+
 | This file is a part of CiviCRM.                                    |
 |                                                                    |
 | CiviCRM is free software; you can copy, modify, and distribute it  |
 | under the terms of the GNU Affero General Public License           |
 | Version 3, 19 November 2007 and the CiviCRM Licensing Exception.   |
 |                                                                    |
 | CiviCRM is distributed in the hope that it will be useful, but     |
 | WITHOUT ANY WARRANTY; without even the implied warranty of         |
 | MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.               |
 | See the GNU Affero General Public License for more details.        |
 |                                                                    |
 | You should have received a copy of the GNU Affero General Public   |
 | License and the CiviCRM Licensing Exception along                  |
 | with this program; if not, contact CiviCRM LLC                     |
 | at info[AT]civicrm[DOT]org. If you have questions about the        |
 | GNU Affero General Public License or the licensing of CiviCRM,     |
 | see the CiviCRM license FAQ at http://civicrm.org/licensing        |
 +--------------------------------------------------------------------+
*}
{if $form.credit_card_number or $form.bank_account_number}
    <div id="payment_information">
        <fieldset class="billing_name_address-group">
            <!-- <legend>{ts}Billing Name and Address{/ts}</legend> -->
            <div class="crm-section billing_name_address-section">
                <!-- <div class="crm-section billingNameInfo-section">
                    <div class="content description">
                      {if $paymentProcessor.payment_type & 2}
                         {ts}Enter the name of the account holder, and the corresponding billing address.{/ts}
                      {else}
                         {ts}Enter the name as shown on your credit or debit card, and the billing address for this card.{/ts}
                      {/if}
                    </div>
                </div> -->
                <div class="crm-section {$form.billing_first_name.name}-section">
                    <div class="label">{$form.billing_first_name.label}</div>
                    <div class="content">
                        <input id="billing_first_name" class="form-text big" type="text" value="{$form.billing_first_name.value}" name="billing_first_name" autocomplete="off" maxlength="60" size="30" placeholder="First Name">
                    </div>
                    <div class="clear"></div>
                </div>
                <!-- <div class="crm-section {$form.billing_middle_name.name}-section">
                    <div class="label">{$form.billing_middle_name.label}</div>
                    <div class="content">{$form.billing_middle_name.html}</div>
                    <div class="clear"></div>
                </div> -->
                <div class="crm-section {$form.billing_last_name.name}-section">
                    <div class="label">{$form.billing_last_name.label}</div>
                    <div class="content">
                        <input id="billing_last_name" class="form-text big" type="text" value="{$form.billing_last_name.value}" name="billing_last_name" autocomplete="off" maxlength="60" size="30" placeholder="Last Name">
                    </div>
                    <div class="clear"></div>
                </div>
                {assign var=n value=email-$bltID}
                <div class="crm-section {$form.$n.name}-section">
                    <div class="label">foo{$form.$n.label}</div>
                    <div class="content">
                        <input id="{$form.$n.name}" class="form-text big required valid" type="text" value="{$form.$n.value}" name="{$form.$n.name}" maxlength="60" size="30" placeholder="Email">
                    </div>
                    <div class="clear"></div>
                </div>
                {assign var=n value=billing_street_address-$bltID}
                <div class="crm-section {$form.$n.name}-section">
                    <div class="label">{$form.$n.label}</div>
                    <div class="content">
                        <input id="{$form.$n.name}" class="form-text big" type="text" value="{$form.$n.value}" name="{$form.$n.name}" autocomplete="off" maxlength="60" size="30" placeholder="Street Address">
                    </div>
                    <div class="clear"></div>
                </div>
                {assign var=n value=billing_city-$bltID}
                <div class="crm-section {$form.$n.name}-section">
                    <div class="label">{$form.$n.label}</div>
                    <div class="content">
                        <input id="{$form.$n.name}" class="form-text big" type="text" value="{$form.$n.value}" name="{$form.$n.name}" autocomplete="off" maxlength="60" size="30" placeholder="Suburb">
                    </div>
                    <div class="clear"></div>
                </div>
                {assign var=n value=billing_country_id-$bltID}
                <div class="crm-section {$form.$n.name}-section">
                    <div class="label">{$form.$n.label}</div>
                    <div class="content">{$form.$n.html|crmReplace:class:big}</div>
                    <div class="clear"></div>
                </div>
                {assign var=n value=billing_state_province_id-$bltID}
                <div class="crm-section {$form.$n.name}-section">
                    <div class="label">{$form.$n.label}</div>
                    <div class="content">{$form.$n.html|crmReplace:class:big}</div>
                    <div class="clear"></div>
                </div>
                {assign var=n value=billing_postal_code-$bltID}
                <div class="crm-section {$form.$n.name}-section">
                    <div class="label">{$form.$n.label}</div>
                    <div class="content">
                        <input id="{$form.$n.name}" class="form-text big" type="text" value="{$form.$n.value}" name="{$form.$n.name}" autocomplete="off" maxlength="60" size="30" placeholder="Post Code">
                    </div>
                    <div class="clear"></div>
                </div>
            </div>
        </fieldset>
    </div>
{/if}
