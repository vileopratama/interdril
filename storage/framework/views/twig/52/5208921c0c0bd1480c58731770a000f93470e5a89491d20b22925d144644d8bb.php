<?php

/* E:\xpyrocms\htdocs\interdril\core/anomaly/files-field_type/resources/views/input.twig */
class __TwigTemplate_eb0ebce87fc30fef56da7c9901fc216bdad36186af2a5ce7dd6674c525b49367 extends TwigBridge\Twig\Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = false;

        $this->blocks = array(
        );
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        // line 1
        echo call_user_func_array($this->env->getFunction('asset_add')->getCallable(), array("add", "scripts.js", "anomaly.field_type.files::js/jquery-sortable.js"));
        echo "
";
        // line 2
        echo call_user_func_array($this->env->getFunction('asset_add')->getCallable(), array("add", "scripts.js", "anomaly.field_type.files::js/input.js"));
        echo "

";
        // line 4
        if ( !$this->getAttribute(($context["field_type"] ?? null), "readonly", array())) {
            // line 5
            echo "    ";
            if (twig_in_filter($this->getAttribute($this->getAttribute(($context["field_type"] ?? null), "config", array()), "mode", array()), array(0 => "default", 1 => "select"))) {
                // line 6
                echo "        <a data-toggle=\"modal\" data-target=\"#";
                echo twig_escape_filter($this->env, $this->getAttribute(($context["field_type"] ?? null), "field_name", array()), "html", null, true);
                echo "-modal\" class=\"btn btn-info btn-xs\"
           href=\"";
                // line 7
                echo $this->env->getExtension('Anomaly\Streams\Platform\StreamsPlugin')->url(("streams/files-field_type/index/" . $this->getAttribute(($context["field_type"] ?? null), "config_key", array())));
                echo "\">";
                echo twig_escape_filter($this->env, call_user_func_array($this->env->getFunction('trans')->getCallable(), array("anomaly.field_type.file::button.select_file")), "html", null, true);
                echo "</a>
    ";
            }
            // line 9
            echo "
    ";
            // line 10
            if (twig_in_filter($this->getAttribute($this->getAttribute(($context["field_type"] ?? null), "config", array()), "mode", array()), array(0 => "default", 1 => "upload"))) {
                // line 11
                echo "        <a data-toggle=\"modal\"
           data-target=\"#";
                // line 12
                echo twig_escape_filter($this->env, $this->getAttribute(($context["field_type"] ?? null), "field_name", array()), "html", null, true);
                echo "-modal\" ";
                if ((twig_length_filter($this->env, $this->getAttribute($this->getAttribute(($context["field_type"] ?? null), "config", array()), "folders", array())) == 1)) {
                    echo " href=\"";
                    echo $this->env->getExtension('Anomaly\Streams\Platform\StreamsPlugin')->url(("streams/files-field_type/upload/" . twig_first($this->env, $this->getAttribute($this->getAttribute(($context["field_type"] ?? null), "config", array()), "folders", array()))));
                    echo "\" ";
                } else {
                    echo " href=\"";
                    echo $this->env->getExtension('Anomaly\Streams\Platform\StreamsPlugin')->url(("streams/files-field_type/choose/" . $this->getAttribute(($context["field_type"] ?? null), "config_key", array())));
                    echo "\" ";
                }
                // line 13
                echo "           class=\"btn btn-success btn-xs\">";
                echo twig_escape_filter($this->env, call_user_func_array($this->env->getFunction('trans')->getCallable(), array("anomaly.field_type.file::button.upload")), "html", null, true);
                echo "</a>
    ";
            }
        }
        // line 16
        echo "
<input type=\"hidden\" name=\"";
        // line 17
        echo twig_escape_filter($this->env, $this->getAttribute(($context["field_type"] ?? null), "input_name", array()), "html", null, true);
        echo "\"
       value=\"";
        // line 18
        echo twig_escape_filter($this->env, twig_join_filter($this->getAttribute(($context["field_type"] ?? null), "ids", array()), ","), "html", null, true);
        echo "\" ";
        echo call_user_func_array($this->env->getFunction('html_attributes')->getCallable(), array("attributes", $this->getAttribute(($context["field_type"] ?? null), "attributes", array())));
        echo " ";
        echo (($this->getAttribute(($context["field_type"] ?? null), "disabled", array())) ? ("disabled") : (""));
        echo " ";
        echo (($this->getAttribute(($context["field_type"] ?? null), "readonly", array())) ? ("readonly") : (""));
        echo ">

<div class=\"selected\">
    ";
        // line 21
        echo $this->getAttribute(($context["field_type"] ?? null), "value_table", array());
        echo "
</div>

<div class=\"modal remote\" id=\"";
        // line 24
        echo twig_escape_filter($this->env, $this->getAttribute(($context["field_type"] ?? null), "field_name", array()), "html", null, true);
        echo "-modal\">
    <div class=\"modal-dialog modal-wide\">
        <div class=\"modal-content\"></div>
    </div>
</div>
";
    }

    public function getTemplateName()
    {
        return "E:\\xpyrocms\\htdocs\\interdril\\core/anomaly/files-field_type/resources/views/input.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  97 => 24,  91 => 21,  79 => 18,  75 => 17,  72 => 16,  65 => 13,  53 => 12,  50 => 11,  48 => 10,  45 => 9,  38 => 7,  33 => 6,  30 => 5,  28 => 4,  23 => 2,  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("{{ asset_add('scripts.js', 'anomaly.field_type.files::js/jquery-sortable.js') }}
{{ asset_add('scripts.js', 'anomaly.field_type.files::js/input.js') }}

{% if not (field_type.readonly) %}
    {% if field_type.config.mode in ['default', 'select'] %}
        <a data-toggle=\"modal\" data-target=\"#{{ field_type.field_name }}-modal\" class=\"btn btn-info btn-xs\"
           href=\"{{ url('streams/files-field_type/index/' ~ field_type.config_key) }}\">{{ trans('anomaly.field_type.file::button.select_file') }}</a>
    {% endif %}

    {% if field_type.config.mode in ['default', 'upload'] %}
        <a data-toggle=\"modal\"
           data-target=\"#{{ field_type.field_name }}-modal\" {% if field_type.config.folders|length == 1 %} href=\"{{ url('streams/files-field_type/upload/' ~ field_type.config.folders|first) }}\" {% else %} href=\"{{ url('streams/files-field_type/choose/' ~ field_type.config_key) }}\" {% endif %}
           class=\"btn btn-success btn-xs\">{{ trans('anomaly.field_type.file::button.upload') }}</a>
    {% endif %}
{% endif %}

<input type=\"hidden\" name=\"{{ field_type.input_name }}\"
       value=\"{{ field_type.ids|join(',') }}\" {{ html_attributes(field_type.attributes) }} {{ field_type.disabled ? 'disabled' }} {{ field_type.readonly ? 'readonly' }}>

<div class=\"selected\">
    {{ field_type.value_table|raw }}
</div>

<div class=\"modal remote\" id=\"{{ field_type.field_name }}-modal\">
    <div class=\"modal-dialog modal-wide\">
        <div class=\"modal-content\"></div>
    </div>
</div>
", "E:\\xpyrocms\\htdocs\\interdril\\core/anomaly/files-field_type/resources/views/input.twig", "");
    }
}
