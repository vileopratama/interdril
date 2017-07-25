<?php

/* E:\xpyrocms\htdocs\interdril\core/anomaly/boolean-field_type/resources/views/ajax.twig */
class __TwigTemplate_95b2da5bfde382c39804710701996cf668559e9bd2d9d9a9312207979e03ca47 extends TwigBridge\Twig\Template
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
        echo call_user_func_array($this->env->getFunction('asset_add')->getCallable(), array("add", "styles.css", "anomaly.field_type.boolean::less/bootstrap-switch.less"));
        echo "
";
        // line 2
        echo call_user_func_array($this->env->getFunction('asset_add')->getCallable(), array("add", "scripts.js", "anomaly.field_type.boolean::js/bootstrap-switch.js"));
        echo "
";
        // line 3
        echo call_user_func_array($this->env->getFunction('asset_add')->getCallable(), array("add", "scripts.js", "anomaly.field_type.boolean::js/ajax.js"));
        echo "

<input
        type=\"checkbox\"
        data-size=\"small\"
        data-provides=\"ajax-switch\"
        data-on-text=\"";
        // line 9
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFunction('trans')->getCallable(), array((($this->getAttribute($this->getAttribute(($context["field_type"] ?? null), "config", array()), "on_text", array())) ? ($this->getAttribute($this->getAttribute(($context["field_type"] ?? null), "config", array()), "on_text", array())) : ("anomaly.field_type.boolean::choice.yes")))), "html", null, true);
        echo "\"
        data-off-text=\"";
        // line 10
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFunction('trans')->getCallable(), array((($this->getAttribute($this->getAttribute(($context["field_type"] ?? null), "config", array()), "off_text", array())) ? ($this->getAttribute($this->getAttribute(($context["field_type"] ?? null), "config", array()), "off_text", array())) : ("anomaly.field_type.boolean::choice.no")))), "html", null, true);
        echo "\"
        data-on-color=\"";
        // line 11
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["field_type"] ?? null), "config", array()), "on_color", array()), "html", null, true);
        echo "\"
        data-off-color=\"";
        // line 12
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["field_type"] ?? null), "config", array()), "off_color", array()), "html", null, true);
        echo "\"
        data-disabled=\"";
        // line 13
        echo (($this->getAttribute(($context["field_type"] ?? null), "disabled", array())) ? ("true") : ("false"));
        echo "\"
        data-entry=\"";
        // line 14
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["field_type"] ?? null), "entry", array()), "id", array()), "html", null, true);
        echo "\"
        data-stream=\"";
        // line 15
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getAttribute(($context["field_type"] ?? null), "entry", array()), "stream", array()), "slug", array()), "html", null, true);
        echo "\"
        data-namespace=\"";
        // line 16
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute($this->getAttribute(($context["field_type"] ?? null), "entry", array()), "stream", array()), "namespace", array()), "html", null, true);
        echo "\"
        data-field=\"";
        // line 17
        echo twig_escape_filter($this->env, $this->getAttribute(($context["field_type"] ?? null), "field", array()), "html", null, true);
        echo "\"
        name=\"";
        // line 18
        echo twig_escape_filter($this->env, $this->getAttribute(($context["field_type"] ?? null), "input_name", array()), "html", null, true);
        echo "\"
        ";
        // line 19
        echo (($this->getAttribute(($context["field_type"] ?? null), "value", array())) ? ("checked") : (""));
        echo "
        ";
        // line 20
        echo (($this->getAttribute(($context["field_type"] ?? null), "readonly", array())) ? ("readonly") : (""));
        echo "
        ";
        // line 21
        echo (($this->getAttribute(($context["field_type"] ?? null), "disabled", array())) ? ("disabled") : (""));
        echo ">
";
    }

    public function getTemplateName()
    {
        return "E:\\xpyrocms\\htdocs\\interdril\\core/anomaly/boolean-field_type/resources/views/ajax.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  84 => 21,  80 => 20,  76 => 19,  72 => 18,  68 => 17,  64 => 16,  60 => 15,  56 => 14,  52 => 13,  48 => 12,  44 => 11,  40 => 10,  36 => 9,  27 => 3,  23 => 2,  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("{{ asset_add('styles.css', 'anomaly.field_type.boolean::less/bootstrap-switch.less') }}
{{ asset_add('scripts.js', 'anomaly.field_type.boolean::js/bootstrap-switch.js') }}
{{ asset_add('scripts.js', 'anomaly.field_type.boolean::js/ajax.js') }}

<input
        type=\"checkbox\"
        data-size=\"small\"
        data-provides=\"ajax-switch\"
        data-on-text=\"{{ trans(field_type.config.on_text ?: 'anomaly.field_type.boolean::choice.yes') }}\"
        data-off-text=\"{{ trans(field_type.config.off_text ?: 'anomaly.field_type.boolean::choice.no') }}\"
        data-on-color=\"{{ field_type.config.on_color }}\"
        data-off-color=\"{{ field_type.config.off_color }}\"
        data-disabled=\"{{ field_type.disabled ? 'true' : 'false' }}\"
        data-entry=\"{{ field_type.entry.id }}\"
        data-stream=\"{{ field_type.entry.stream.slug }}\"
        data-namespace=\"{{ field_type.entry.stream.namespace }}\"
        data-field=\"{{ field_type.field }}\"
        name=\"{{ field_type.input_name }}\"
        {{ field_type.value ? 'checked' }}
        {{ field_type.readonly ? 'readonly' }}
        {{ field_type.disabled ? 'disabled' }}>
", "E:\\xpyrocms\\htdocs\\interdril\\core/anomaly/boolean-field_type/resources/views/ajax.twig", "");
    }
}
