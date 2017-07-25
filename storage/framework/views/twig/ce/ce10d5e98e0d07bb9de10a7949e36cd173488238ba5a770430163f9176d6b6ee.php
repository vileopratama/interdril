<?php

/* E:\xpyrocms\htdocs\interdril\core/anomaly/addon-field_type/resources/views/input.twig */
class __TwigTemplate_9960427d6113ef9f04a13565e9486a7afd4cf3cbf40b7c6e3497106b17d05671 extends TwigBridge\Twig\Template
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
        echo "<select
        class=\"";
        // line 2
        echo twig_escape_filter($this->env, $this->getAttribute(($context["field_type"] ?? null), "class", array()), "html", null, true);
        echo "\"
        name=\"";
        // line 3
        echo twig_escape_filter($this->env, $this->getAttribute(($context["field_type"] ?? null), "input_name", array()), "html", null, true);
        echo "\"
        ";
        // line 4
        echo call_user_func_array($this->env->getFunction('html_attributes')->getCallable(), array("attributes", $this->getAttribute(($context["field_type"] ?? null), "attributes", array())));
        echo "
        ";
        // line 5
        echo (($this->getAttribute(($context["field_type"] ?? null), "disabled", array())) ? ("disabled") : (""));
        echo "
        ";
        // line 6
        echo (($this->getAttribute(($context["field_type"] ?? null), "readonly", array())) ? ("readonly") : (""));
        echo ">

    ";
        // line 8
        if ( !$this->getAttribute(($context["field_type"] ?? null), "required", array())) {
            // line 9
            echo "        <option>";
            echo twig_escape_filter($this->env, call_user_func_array($this->env->getFunction('trans')->getCallable(), array($this->getAttribute(($context["field_type"] ?? null), "placeholder", array()))), "html", null, true);
            echo "</option>
    ";
        }
        // line 11
        echo "
    ";
        // line 12
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable($this->getAttribute(($context["field_type"] ?? null), "options", array()));
        foreach ($context['_seq'] as $context["value"] => $context["option"]) {
            // line 13
            echo "        <option value=\"";
            echo twig_escape_filter($this->env, $context["value"], "html", null, true);
            echo "\" ";
            echo ((($context["value"] == $this->getAttribute($this->getAttribute(($context["field_type"] ?? null), "value", array()), "namespace", array()))) ? ("selected") : (""));
            echo ">";
            echo twig_escape_filter($this->env, call_user_func_array($this->env->getFunction('trans')->getCallable(), array($context["option"])), "html", null, true);
            echo "</option>
    ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['value'], $context['option'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 15
        echo "
</select>
";
    }

    public function getTemplateName()
    {
        return "E:\\xpyrocms\\htdocs\\interdril\\core/anomaly/addon-field_type/resources/views/input.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  71 => 15,  58 => 13,  54 => 12,  51 => 11,  45 => 9,  43 => 8,  38 => 6,  34 => 5,  30 => 4,  26 => 3,  22 => 2,  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("<select
        class=\"{{ field_type.class }}\"
        name=\"{{ field_type.input_name }}\"
        {{ html_attributes(field_type.attributes) }}
        {{ field_type.disabled ? 'disabled' }}
        {{ field_type.readonly ? 'readonly' }}>

    {% if not field_type.required %}
        <option>{{ trans(field_type.placeholder) }}</option>
    {% endif %}

    {% for value, option in field_type.options %}
        <option value=\"{{ value }}\" {{ value == field_type.value.namespace ? 'selected' }}>{{ trans(option) }}</option>
    {% endfor %}

</select>
", "E:\\xpyrocms\\htdocs\\interdril\\core/anomaly/addon-field_type/resources/views/input.twig", "");
    }
}
